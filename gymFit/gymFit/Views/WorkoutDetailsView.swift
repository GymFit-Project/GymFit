//
//  WorkoutDetailsView.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import SwiftUI

struct WorkoutDetailsView: View {
    
    var muscleGroupId: String?
    var muscleGroup: MuscleGroup? {
        for muscleGroup in MuscleGroup.muscleGroupData {
            if muscleGroupId == muscleGroup.objectId{
                return muscleGroup
            }
        }
        return nil
    }
    
    var exercises: [Exercise]? {
        var exercisesForMuscleGroup = [Exercise]()
        for exercise in Exercise.exerciseData {
            if exercise.muscleGroup?.objectId == muscleGroupId{
                exercisesForMuscleGroup.append(exercise)
            }
        }
        return exercisesForMuscleGroup
    }
    
    
    var body: some View{
            List{
                ForEach(exercises ?? []) { exercise in
                    NavigationLink(destination: ExerciseDetailsView(exerciseId: exercise.objectId)){
                        HStack{
                            ImageView(url:(exercise.image?.url)!).frame(width: 96, height: 96).scaledToFit()
                            VStack(alignment: .leading){
                                Text(exercise.name ?? "None")
                                    .font(.title)
                                    .foregroundColor(.yellow)
                                HStack {
                                    if(exercise.reps != nil){
                                       Text("Reps: \(String(exercise.reps ?? -1))")
                                    }else{
                                        Text("Duration: \(String(exercise.duration ?? -1))")
                                    }
                                    Text("|")
                                    Text("Sets: \(String(exercise.sets ?? -1))")
                                }
                            }
                        }
                    }
                }
            }
                .navigationTitle("\(muscleGroup?.name ?? "") Exercises")
        }
    
    
    
    //    var body: some View {
    //            List {
    //                ForEach(exercises.filter { $0.muscleGroup == muscleGroup }) { exercise in
    //                    NavigationLink(destination: ExerciseDetailsView(exercise: exercise)) {
    //                        HStack{
    //                            Image(exercise.image)
    //                                .resizable()
    //                                .frame(width: 96, height: 96)
    //                                .scaledToFit()
    //                            VStack(alignment: .leading){
    //                                Text(exercise.name)
    //                                    .foregroundStyle(.yellow)
    //                                    .font(.title)
    //                                    .bold()
    //                                HStack{
    //                                    if case .reps(let numReps) = exercise.type {
    //                                        Text("Reps: \(numReps)")
    //                                    } else if case .duration(let numDuration) = exercise.type {
    //                                        Text("Duration: \(formatTimeInterval(numDuration))")
    //                                    }
    //                                    Text("|")
    //                                    Text("Sets: \(exercise.sets)")
    //                                }
    //                            }
    //                            .padding(.leading)
    //                        }
    //                    }
    //                }
    //            }
    //            .listStyle(.inset)
    //            .navigationTitle("\(muscleGroup.name) Exercises")
    //    }
    //}
    //
}
#Preview {
    WorkoutDetailsView(muscleGroupId: "PcfHF31Xhm")
}
