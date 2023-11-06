//
//  AllExercisesView.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import SwiftUI

struct AllExercisesView: View {
    var body: some View {
        var exercises: [Exercise] = Exercise.exerciseData
        List {
            ForEach(exercises) { exercise in
                
                HStack{
                    Image(exercise.image)
                        .resizable()
                        .frame(width: 96, height: 96)
                        .scaledToFit()
                    VStack(alignment: .leading){
                        Text(exercise.name)
                            .font(.title)
                        HStack{
                            if case .reps(let numReps) = exercise.type {
                                Text("Reps: \(numReps)")
                            } else if case .duration(let numDuration) = exercise.type {
                                Text("Duration: \(formatTimeInterval(numDuration))")
                            }
                            Text("|")
                            Text("Sets: \(exercise.sets)")
                        }
                    }
                    .padding(.leading)
                }
            }
        }
        .listStyle(.inset)
    }

}

#Preview {
    AllExercisesView()
}
