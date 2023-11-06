//
//  MuscleGroupsView.swift
//  gymFit
//
//  Created by Fabio on 11/5/23.
//

import SwiftUI

//move to a models folder later



struct MuscleGroupsView: View {
    var muscleGroups = MuscleGroup.allCases
    
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(muscleGroups, id: \.self) { group in
                    NavigationLink(destination: WorkoutDetailsView(muscleGroup: group)) {
                        
                        HStack{
                            Image(group.image).resizable().frame(width: 96,height: 96)
                            /*@START_MENU_TOKEN@*/Text(group.name)/*@END_MENU_TOKEN@*/.font(.title)
                                .padding(.leading)
                        }
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Muscle Groups")
        }
        
    }
}

struct MuscleGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        MuscleGroupsView()
    }
}
