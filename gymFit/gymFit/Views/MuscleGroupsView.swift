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
