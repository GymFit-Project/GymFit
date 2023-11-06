//
//  MuscleGroupsView.swift
//  gymFit
//
//  Created by Fabio on 11/5/23.
//

import SwiftUI

//move to a models folder later

struct MuscleGroup: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct MuscleGroupsView: View {
    @State private var muscleGroups = [
        MuscleGroup(name: "Chest", image: "MuscleGroupChest"),
        MuscleGroup(name: "Legs", image: "MuscleGroupLegs"),
        MuscleGroup(name: "Biceps", image: "MuscleGroupBiceps"),
        MuscleGroup(name: "Abs", image: "MuscleGroupAbs"),
        MuscleGroup(name: "Shoulders", image: "MuscleGroupShoulders"),
        MuscleGroup(name: "Back", image: "MuscleGroupBack")

    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(muscleGroups) { group in
                    HStack{
                        Image(group.image).resizable().frame(width: 96,height: 96)
                        /*@START_MENU_TOKEN@*/Text(group.name)/*@END_MENU_TOKEN@*/.font(.title3)
                    }
                }
            }.navigationTitle("Muscle Groups")
        }
        
    }
}

struct MuscleGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        MuscleGroupsView()
    }
}
