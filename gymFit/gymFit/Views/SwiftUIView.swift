//
//  SwiftUIView.swift
//  gymFit
//
//  Created by Fabio on 11/24/23.
//

import SwiftUI
import Nuke

struct SwiftUIView: View {
    
    var body: some View {
        List {
            ForEach(Exercise.exerciseData) { exercise in
                var muscleGroup: MuscleGroup? {
                    for muscleGroup in MuscleGroup.muscleGroupData {
                        if exercise.muscleGroup?.objectId == muscleGroup.objectId{
                            return muscleGroup
                        }
                    }
                    return nil
                }
                VStack{
                    Text(exercise.name ?? "default name")
                    ImageView(url: (exercise.image?.url)!)
                    Text(exercise.description ?? "default description")
                    Text("sets: \(String(exercise.sets ?? 0))")
                    Text("duration: \(String(exercise.duration ?? 0))")
                    Text("muscle: \(String(muscleGroup?.name ?? "0"))")

                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}

//SAMPLE FETCH
//    [Exercise ({"createdAt":{"__type":"Date","iso":"2023-11-23T17:07:21.699Z"},"description":"Perform crunches by lying on your back, bending your knees, and lifting your upper body toward your knees. This exercise targets the abdominal muscles, helping to strengthen and tone your core.","image":{"__type":"File","name":"b459d3e2cb588bb67e0470b2f3aebd96_crunches.png","url":"https:\/\/parsefiles.back4app.com\/8m9cY1kjVuDvV1vlVW9wx0J6ULjyMNvFVacBHn0L\/b459d3e2cb588bb67e0470b2f3aebd96_crunches.png"},"isRepBased":true,"muscleGroup":{"objectId":"hONWk0Ze5l"},"name":"Crunches","objectId":"2MWqkzlhkS","reps":20,"sets":3,"updatedAt":{"__type":"Date","iso":"2023-11-23T17:07:21.699Z"}})]
