//
//  WorkoutPlans.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import Foundation

struct MuscleGroup: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

extension MuscleGroup {
    static var muscleGroupData = [
        MuscleGroup(name: "Chest", image: "MuscleGroupChest"),
        MuscleGroup(name: "Legs", image: "MuscleGroupLegs"),
        MuscleGroup(name: "Biceps", image: "MuscleGroupBiceps"),
        MuscleGroup(name: "Abs", image: "MuscleGroupAbs"),
        MuscleGroup(name: "Shoulders", image: "MuscleGroupShoulders"),
        MuscleGroup(name: "Back", image: "MuscleGroupBack")
    ]
}
