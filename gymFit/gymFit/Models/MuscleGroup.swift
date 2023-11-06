//
//  WorkoutPlans.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import Foundation

enum MuscleGroup: CaseIterable {
    case chest
    case legs
    case biceps
    case abs
    case shoulders
    case back
    
    var name: String {
        switch self {
        case .chest: return "Chest"
        case .legs: return "Legs"
        case .biceps: return "Biceps"
        case .abs: return "Abs"
        case .shoulders: return "Shoulders"
        case .back: return "Back"
        }
    }
    
    var image: String {
        switch self {
        case .chest: return "MuscleGroupChest"
        case .legs: return "MuscleGroupLegs"
        case .biceps: return "MuscleGroupBiceps"
        case .abs: return "MuscleGroupAbs"
        case .shoulders: return "MuscleGroupShoulders"
        case .back: return "MuscleGroupBack"
        }
    }
}
