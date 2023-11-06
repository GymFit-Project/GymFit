//
//  WorkoutDetailsView.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import SwiftUI

struct WorkoutDetailsView: View {
    var muscleGroup: MuscleGroup
    var exercises: [Exercise] = Exercise.exerciseData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(exercises.filter { $0.muscleGroup == muscleGroup }) { exercise in
                    
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
        .navigationTitle("\(muscleGroup.name) Exercises")
    }
}

#Preview {
    WorkoutDetailsView(muscleGroup: .abs)
}
