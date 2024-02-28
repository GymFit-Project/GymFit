//
//  AllExercisesView.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import SwiftUI

struct AllExercisesView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(Exercise.exerciseData) { exercise in
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
            .listStyle(.inset)
            .navigationTitle("All Exercises")
        }
        
    }
}

#Preview {
    AllExercisesView()
}
