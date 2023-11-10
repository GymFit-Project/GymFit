//
//  ExerciseDetailsView.swift
//  gymFit
//
//  Created by Anthony Khera on 11/10/23.
//

import SwiftUI

struct ExerciseDetailsView: View {
    var exercise: Exercise
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Image(exercise.image)
                    .resizable()
                    .scaledToFit()
                Text(exercise.name)
                    .foregroundStyle(.black)
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.yellow)
                    .padding(.top, -20)

                Text("Muscle Group: \n" + exercise.muscleGroup.name)
                    .font(.headline)
                HStack{
                    if case .reps(let numReps) = exercise.type {
                        Text("Reps: \n\(numReps)")
                    } else if case .duration(let numDuration) = exercise.type {
                        Text("Duration: \n\(formatTimeInterval(numDuration))")
                    }
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Text("Sets: \n\(exercise.sets)")
                }
                .font(.headline)
                Text(exercise.description)
                    .padding()
                Spacer()
            }
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ExerciseDetailsView(exercise: Exercise.exerciseData[1])
}
