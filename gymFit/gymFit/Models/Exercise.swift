//
//  ExerciseModel.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import Foundation

struct Exercise: Identifiable {
    
    enum ExerciseType {
        case reps(Int)
        case duration(TimeInterval)
    }
        
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var type: ExerciseType
    var sets: Int
    var muscleGroup: MuscleGroup
    
    var isRepBased: Bool {
        if case .reps = type {
            return true
        }
        return false
    }
    
}

extension Exercise {
    static var exerciseData = [
        Exercise(name: "Crunches", description: "Like sit ups but crunchy", image: "crunches", type: .reps(20), sets: 3, muscleGroup: .abs),
        Exercise(name: "Push Ups", description: "You push yourself up.", image: "pushups", type: .reps(20), sets: 3, muscleGroup: .shoulders),
        Exercise(name: "Pulls Ups", description: "You pull yourself up.", image: "pullups", type: .reps(20), sets: 3, muscleGroup: .biceps),
        Exercise(name: "Planks", description: "Elevate your body in a planking position.", image: "planks", type: .duration(60), sets: 3, muscleGroup: .abs)
    ]
}

func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
    let minutes = Int(timeInterval) / 60
    let seconds = Int(timeInterval) % 60
    return String(format: "%d:%02d", minutes, seconds)
}
