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
        //Body Weight
        Exercise(name: "Crunches", description: "Like sit ups but crunchy", image: "crunches", type: .reps(20), sets: 3, muscleGroup: .abs),
        Exercise(name: "Push Ups", description: "You push yourself up.", image: "pushups", type: .reps(20), sets: 3, muscleGroup: .shoulders),
        Exercise(name: "Pulls Ups", description: "You pull yourself up.", image: "pullups", type: .reps(20), sets: 3, muscleGroup: .biceps),
        Exercise(name: "Planks", description: "Elevate your body in a planking position.", image: "planks", type: .duration(60), sets: 3, muscleGroup: .abs),

        // Chest
        Exercise(name: "Bench Press", description: "Lift weights lying on a bench.", image: "benchpress", type: .reps(15), sets: 4, muscleGroup: .chest),
        Exercise(name: "Flyes", description: "Isolate chest muscles with flye movements.", image: "flyes", type: .reps(12), sets: 3, muscleGroup: .chest),
        Exercise(name: "Dumbbell Pullover", description: "Work on chest and back muscles.", image: "pullover", type: .reps(12), sets: 3, muscleGroup: .chest),
        Exercise(name: "Chest Dips", description: "Use parallel bars to target chest.", image: "chestdips", type: .reps(15), sets: 3, muscleGroup: .chest),
        
        // Legs
        Exercise(name: "Squats", description: "Classic leg exercise.", image: "squats", type: .reps(12), sets: 4, muscleGroup: .legs),
        Exercise(name: "Lunges", description: "Forward or reverse lunges for leg strength.", image: "lunges", type: .reps(16), sets: 3, muscleGroup: .legs),
        Exercise(name: "Leg Press", description: "Machine-based leg press.", image: "legpress", type: .reps(15), sets: 3, muscleGroup: .legs),
        Exercise(name: "Calf Raises", description: "Strengthen your calf muscles.", image: "calfraises", type: .reps(20), sets: 3, muscleGroup: .legs),
        
        // Biceps
        Exercise(name: "Barbell Curls", description: "Classic bicep exercise with a barbell.", image: "barbellcurls", type: .reps(12), sets: 4, muscleGroup: .biceps),
        Exercise(name: "Hammer Curls", description: "Alternate dumbbell curls for bicep and forearm development.", image: "hammercurls", type: .reps(15), sets: 3, muscleGroup: .biceps),
        Exercise(name: "Preacher Curls", description: "Use a preacher bench for focused bicep work.", image: "preachercurls", type: .reps(12), sets: 3, muscleGroup: .biceps),
        Exercise(name: "Concentration Curls", description: "Isolate biceps with concentration curls.", image: "concentrationcurls", type: .reps(10), sets: 3, muscleGroup: .biceps),
        
        // Shoulders
        Exercise(name: "Overhead Press", description: "Lift weights overhead for shoulder strength.", image: "overheadpress", type: .reps(12), sets: 4, muscleGroup: .shoulders),
        Exercise(name: "Lateral Raises", description: "Work on lateral deltoids with raises.", image: "lateralraises", type: .reps(15), sets: 3, muscleGroup: .shoulders),
        Exercise(name: "Front Raises", description: "Target front deltoids with front raises.", image: "frontraises", type: .reps(12), sets: 3, muscleGroup: .shoulders),
        Exercise(name: "Shrugs", description: "Lift shoulders up and down for trap development.", image: "shrugs", type: .reps(15), sets: 3, muscleGroup: .shoulders),
        
        // Back
        Exercise(name: "Deadlifts", description: "Lift heavy weights from the ground for full-body engagement.", image: "deadlifts", type: .reps(8), sets: 4, muscleGroup: .back),
        Exercise(name: "Lat Pulldowns", description: "Use a cable machine for lat development.", image: "latpulldowns", type: .reps(12), sets: 3, muscleGroup: .back),
        Exercise(name: "Rowing", description: "Machine or barbell rows for back strength.", image: "rowing", type: .reps(12), sets: 3, muscleGroup: .back),
        Exercise(name: "Hyperextensions", description: "Strengthen lower back with hyperextension exercises.", image: "hyperextensions", type: .reps(15), sets: 3, muscleGroup: .back),
    ]
}

func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
    let minutes = Int(timeInterval) / 60
    let seconds = Int(timeInterval) % 60
    return String(format: "%d:%02d", minutes, seconds)
}
