//
//  ExerciseDetailsView.swift
//  gymFit
//
//  Created by Anthony Khera on 11/10/23.
//


import SwiftUI

struct ExerciseDetailsView: View {
    var exerciseId: String?
    
    var exercise: Exercise? {
        for exercise in Exercise.exerciseData {
            if exercise.objectId == exerciseId{
                return exercise
            }
        }
        return nil
    }
    
    var body: some View {
        if let exercise = exercise {
            var muscleGroup: MuscleGroup? {
                for muscleGroup in MuscleGroup.muscleGroupData {
                    if exercise.muscleGroup?.objectId == muscleGroup.objectId{
                        return muscleGroup
                    }
                }
                return nil
            }
            VStack(spacing: 20){
                ImageView(url: (exercise.image?.url)!)
                Text(exercise.name ?? "default name")
                    .foregroundStyle(.black)
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.yellow)
                    .padding(.top, -20)
                
                Text("Muscle Group: \n \(muscleGroup?.name ?? "Placeholder")")
                    .font(.headline)
                HStack{
                    if(exercise.reps != nil){
                        Text("Reps: \(String(exercise.reps ?? -1))")
                    }else{
                        Text("Duration: \(String(exercise.duration ?? -1))")
                    }
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Text("Sets: \n\(String(exercise.sets ?? -1))")
                }
                .font(.headline)
                Text(exercise.description ?? "Placeholder")
                    .padding()
                Spacer()
            }
            .multilineTextAlignment(.center)
            .navigationTitle("\(muscleGroup?.name ?? "Placeholder") Exercises")
        }else {
            Text("No exercise was clicked")
        }
    }
}
#Preview {
    ExerciseDetailsView(exerciseId: "2MWqkzlhkS")
}
