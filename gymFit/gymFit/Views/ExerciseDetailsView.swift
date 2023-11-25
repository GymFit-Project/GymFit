////
////  ExerciseDetailsView.swift
////  gymFit
////
////  Created by Anthony Khera on 11/10/23.
////
//
//import SwiftUI
//
//struct ExerciseDetailsView: View {
//    var exercise: Exercise
//    
//    var body: some View {
//            VStack(spacing: 20){
//                Image(exercise.image)
//                    .resizable()
//                    .scaledToFit()
//                Text(exercise.name)
//                    .foregroundStyle(.black)
//                    .font(.title)
//                    .bold()
//                    .frame(maxWidth: .infinity, maxHeight: 50)
//                    .background(.yellow)
//                    .padding(.top, -20)
//
//                Text("Muscle Group: \n" + exercise.muscleGroup.name)
//                    .font(.headline)
//                HStack{
//                    if case .reps(let numReps) = exercise.type {
//                        Text("Reps: \n\(numReps)")
//                    } else if case .duration(let numDuration) = exercise.type {
//                        Text("Duration: \n\(formatTimeInterval(numDuration))")
//                    }
//                    Spacer()
//                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                    Text("Sets: \n\(exercise.sets)")
//                }
//                .font(.headline)
//                Text(exercise.description)
//                    .padding()
//                Spacer()
//            }
//            .multilineTextAlignment(.center)
//            .navigationTitle("\(exercise.muscleGroup.name) Exercises")
//    }
//}
//
//#Preview {
//    ExerciseDetailsView(exercise: Exercise.exerciseData[0])
//}


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
            VStack{
                Text(exercise.name ?? "default name")
                ImageView(url: (exercise.image?.url)!)
                Text(exercise.description ?? "default description")
                Text("sets: \(String(exercise.sets ?? 0))")
                Text("duration: \(String(exercise.duration ?? 0))")}
        } else{
            Text("No exercise was clicked")
        }
    }
}
