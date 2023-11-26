////
////  MuscleGroupsView.swift
////  gymFit
////
////  Created by Fabio on 11/5/23.
////
//
//import SwiftUI
//
//struct MuscleGroupsView: View {
//    var muscleGroups = MuscleGroup.allCases
//    var body: some View {
//        NavigationView{
//            List{
//                ForEach(muscleGroups, id: \.self) { group in
//                    NavigationLink(destination: WorkoutDetailsView(muscleGroup: group)) {
//                        
//                        HStack{
//                            Image(group.image).resizable().frame(width: 96,height: 96)
//                            Text(group.name)
//                                .font(.title)
//                                .padding(.leading)
//                                .foregroundColor(.yellow)
//                            
//                        }
//                    }
//                }
//            }
//            .listStyle(.inset)
//            .navigationTitle("Muscle Groups")
//        }
//        
//    }
//}
//
//#Preview {
//    MuscleGroupsView()
//}

//
//  MuscleGroupsView.swift
//  gymFit
//
//  Created by Fabio on 11/5/23.
//

import SwiftUI

struct MuscleGroupsView: View {
    
    var body: some View {
        NavigationView{
            List{
                ForEach(MuscleGroup.muscleGroupData) { muscleGroup in
                    NavigationLink(destination: WorkoutDetailsView(muscleGroupId: muscleGroup.objectId)) {
                        HStack{
                            ImageView(url:
                                        (muscleGroup.image?.url)!).frame(width: 96, height: 96)
                            Text(muscleGroup.name ?? "None")
                                .font(.title)
                                .padding(.leading)
                                .foregroundColor(.yellow)
                            
                        }
                    }
                }
                .navigationTitle("Muscle Groups")
            }
            
        }
    }
}

#Preview {
    MuscleGroupsView()
}
