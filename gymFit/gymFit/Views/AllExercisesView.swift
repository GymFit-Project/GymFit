////
////  AllExercisesView.swift
////  gymFit
////
////  Created by Anthony Khera on 11/5/23.
////
//
//import SwiftUI
//
//
//struct AllExercisesView: View {
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(Exercise.exerciseData) { exercise in
//                    NavigationLink(destination: ExerciseDetailsView(exercise: exercise)) {
//                        HStack {
//                            Image(exercise.image)
//                                .resizable()
//                                .frame(width: 96, height: 96)
//                                .scaledToFit()
//                            VStack(alignment: .leading) {
//                                Text(exercise.name)
//                                    .foregroundStyle(.yellow)
//                                    .font(.title)
//                                    .bold()
//                                HStack {
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
//            .navigationTitle("All Exercises")
//        }
//    }
//}
//
//#Preview {
//    AllExercisesView()
//}


import SwiftUI

struct AllExercisesView: View {
    
    @State private var selectedExercise: Exercise?
    
    var body: some View {
        NavigationView{
            List{
                ForEach(Exercise.exerciseData) { exercise in
                    NavigationLink(
                                            destination: ExerciseDetailsView(exercise: selectedExercise),
                                            tag: exercise,
                                            selection: $selectedExercise
                    ){
                        HStack{
                            ImageView(url:
                                        (exercise.image?.url)!).frame(width: 100, height: 100)
                            Text(exercise.name ?? "None")
                                .font(.title)
                                .padding(.leading)
                                .foregroundColor(.yellow)

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
