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
        
        // Body Weight
        Exercise(name: "Crunches", description: "Perform crunches by lying on your back, bending your knees, and lifting your upper body toward your knees. This exercise targets the abdominal muscles, helping to strengthen and tone your core.", image: "crunches", type: .reps(20), sets: 3, muscleGroup: .abs),
        
        Exercise(name: "Push Ups", description: "Engage in push-ups by starting in a plank position, lowering your body toward the ground, and pushing back up. This classic exercise enhances upper body strength, working the chest, shoulders, and triceps.", image: "pushups", type: .reps(20), sets: 3, muscleGroup: .shoulders),
        
        Exercise(name: "Pulls Ups", description: "Execute pull-ups by gripping a horizontal bar with palms facing away, pulling your body upward. This exercise is excellent for developing upper body strength, focusing on the back and biceps.", image: "pullups", type: .reps(20), sets: 3, muscleGroup: .biceps),
        
        Exercise(name: "Planks", description: "Perform planks by holding a push-up position with arms straight. This static exercise targets the entire core, promoting stability and strength. It also engages the shoulders, back, and legs.", image: "planks", type: .duration(60), sets: 3, muscleGroup: .abs),
        
        Exercise(name: "Leg Raise", description: "Perform leg raise in the parallel bars by rasing your legs and lowering them slowly.", image: "leg_raise", type: .reps(10), sets: 4, muscleGroup: .abs),
        
        Exercise(name: "Reverse Crunch", description: "Lie down on your back with your arms extended along your sides (palms facing down). Raise your legs bending your knees at a ninety degree angle.", image: "reverse_crunch", type: .reps(10), sets: 4, muscleGroup: .abs),
        
        Exercise(name: "Seated Scissor Kicks", description: "Sit on the floor with your legs extended straight in front of you. Lift your legs off the ground a few inches. Do the scissor kicks by crossing your right leg over your left and then switch, your left leg over your right.", image: "seated_scissor_kicks", type: .duration(60), sets: 3, muscleGroup: .abs),
        
        Exercise(name: "Dead Bug", description: "Lie on your back with your legs lifted off the ground, knees at a ninety degree angle and arms extended toward the ceiling. Lower your right arm and left leg toward the floor without letting them touch the ground. Return to the initial position and repeat the exercise with the other side.", image: "dead_bug", type: .reps(8), sets: 4, muscleGroup: .abs),
        
        // Chest
        Exercise(name: "Bench Press", description: "Conduct bench presses by lying on a bench and lifting weights upward. This exercise is a cornerstone for building chest strength and muscle mass.", image: "benchpress", type: .reps(15), sets: 4, muscleGroup: .chest),
        
        Exercise(name: "Flyes", description: "Complete flyes by extending your arms outward while holding weights. This isolation exercise effectively targets the chest muscles, enhancing definition and shape.", image: "flyes", type: .reps(12), sets: 3, muscleGroup: .chest),
        
        Exercise(name: "Dumbbell Pullover", description: "Execute dumbbell pullovers by lying on your back, holding a weight overhead, and lowering it behind your head. This exercise engages both the chest and back muscles.", image: "pullover", type: .reps(12), sets: 3, muscleGroup: .chest),
        
        Exercise(name: "Chest Dips", description: "Perform chest dips using parallel bars, lowering and raising your body. This bodyweight exercise is excellent for building chest and triceps strength.", image: "chestdips", type: .reps(15), sets: 3, muscleGroup: .chest),
        
        Exercise(name: "Machine Fly", description: "Perform machine flies by grabbing the handles and pushing them in front of you.Focus on contracting your muscles throughout the exercise.", image: "machine_fly", type: .reps(10), sets: 4, muscleGroup: .chest),
        
        Exercise(name: "Cable Crossover", description: "Grasp a handle in each hand and then bring them together in front of you, crossing them over at the height of your chest.", image: "cable_crossover", type: .reps(10), sets: 4, muscleGroup: .chest),
        
        Exercise(name: "Incline Dumbell Press", description: "Grasp a dumbell in each hand. Exhale as you push the dumbbells upward, extending your arms fully. Inhale as you lower the dumbbells in a controlled manner", image: "incline_dumbell_press", type: .reps(10), sets: 4, muscleGroup: .chest),
        
        Exercise(name: "Decline Dumbell Bench Press", description: "Grasp a dumbell in each hand and exhale as you push the dumbells upward. Extend arms fully.", image: "decline_dumbell_bench_p", type: .reps(12), sets: 3, muscleGroup: .chest),
        
        // Legs
        Exercise(name: "Squats", description: "Engage in squats by lowering your body into a seated position and standing back up. This fundamental leg exercise targets the quadriceps, hamstrings, and glutes, promoting lower body strength.", image: "squats", type: .reps(12), sets: 4, muscleGroup: .legs),
        
        Exercise(name: "Lunges", description: "Complete lunges by taking a step forward and lowering your body. This exercise targets the quadriceps, hamstrings, and glutes, enhancing leg strength and stability.", image: "lunges", type: .reps(16), sets: 3, muscleGroup: .legs),
        
        Exercise(name: "Leg Press", description: "Conduct leg presses using a machine, pushing weights away from your body. This exercise targets the entire leg, emphasizing quadriceps, hamstrings, and glutes.", image: "legpress", type: .reps(15), sets: 3, muscleGroup: .legs),
        
        Exercise(name: "Calf Raises", description: "Perform calf raises by lifting your heels off the ground. This exercise strengthens the calf muscles, improving lower leg stability and definition.", image: "calfraises", type: .reps(20), sets: 3, muscleGroup: .legs),
        
        Exercise(name: "Leg Extension", description: "Sit on the machine with your back pressed against the backrest. Exhale as you fully extend your legs, and inhale as you slowly lower your legs.", image: "leg_extension", type: .reps(10), sets: 4, muscleGroup: .legs),
        
        Exercise(name: "Barbell Reverse Lunge", description: "Position the barbell across your shoulders and upper back. Lower your body by bending both knees until your back knee is just above the ground. Repeat the movement on the same leg for the desired number of repetitions", image: "barbell_reverse_lunge", type: .reps(10), sets: 4, muscleGroup: .legs),
        
        Exercise(name: "Goblet Squat", description: "Hold a dumbbell or kettlebell vertically with both hands at chest level. Lower your body down, keeping your chest up and maintaining a straight chest position. Exhale as you push through your heels to return to the initial position.", image: "goblet_squat", type: .reps(12), sets: 4, muscleGroup: .legs),
        
        Exercise(name: "Step Up", description: "Place one foot entirely on the bench or step. Lift your body up onto the platform. Exhale as you carefully lower your back down to the starting position.", image: "step_up", type: .reps(16), sets: 4, muscleGroup: .legs),
        
        // Biceps
        Exercise(name: "Barbell Curls", description: "Execute barbell curls by lifting a barbell with palms facing up. This classic bicep exercise promotes overall arm strength and muscle development.", image: "barbellcurls", type: .reps(12), sets: 4, muscleGroup: .biceps),
        
        Exercise(name: "Hammer Curls", description: "Complete hammer curls by lifting dumbbells with palms facing in. This variation targets the biceps and forearms, contributing to well-rounded arm strength.", image: "hammercurls", type: .reps(15), sets: 3, muscleGroup: .biceps),
        
        Exercise(name: "Preacher Curls", description: "Conduct preacher curls using a specialized bench, isolating the biceps. This exercise helps build peak bicep muscle.", image: "preachercurls", type: .reps(12), sets: 3, muscleGroup: .biceps),
        
        Exercise(name: "Concentration Curls", description: "Perform concentration curls by sitting and curling a dumbbell. This isolation exercise targets the biceps, enhancing muscle definition.", image: "concentrationcurls", type: .reps(10), sets: 3, muscleGroup: .biceps),
        
        Exercise(name: "Barbell Curl", description: "Hold the barbell with an underhand grip. Inhale as you curl the barbell toward your chest, bending your elbows. Exhale as you lower the barbell back to the starting position.", image: "barbell_curl", type: .reps(10), sets: 4, muscleGroup: .biceps),
        
        Exercise(name: "Incline Dumbell Curl", description: "Sit on the incline bench with a dumbbell in each hand. Inhale as you simultaneously curl both dumbbells toward your shoulders. Exhale as you lower the dumbbells back to the initial position.", image: "incline_dumbell", type: .reps(12), sets: 4, muscleGroup: .biceps),

        Exercise(name: "Drag Curl", description: "Hold two dumbells or a barbell with an underhand grip. Pull your elbows straight back and keeping them close to your body. Lower the barbell back down slowly.", image: "drag_curl", type: .reps(12), sets: 4, muscleGroup: .biceps),
        
        Exercise(name: "Waiter curl", description: "Hold a dumbell by one of its sides with both hands open. Inhale as you curl toward your chest. Exhale as you lower the dumbells back to the initial position.", image: "waiter_curl", type: .reps(10), sets: 3, muscleGroup: .biceps),
        
        // Shoulders
        Exercise(name: "Overhead Press", description: "Engage in overhead presses by lifting weights overhead. This exercise targets the deltoids, contributing to shoulder strength and stability.", image: "overheadpress", type: .reps(12), sets: 4, muscleGroup: .shoulders),
        
        Exercise(name: "Lateral Raises", description: "Complete lateral raises by lifting weights to the sides. This exercise isolates the lateral deltoids, enhancing shoulder width and definition.", image: "lateralraises", type: .reps(15), sets: 3, muscleGroup: .shoulders),
        
        Exercise(name: "Front Raises", description: "Conduct front raises by lifting weights to the front. This exercise targets the front deltoids, contributing to overall shoulder development.", image: "frontraises", type: .reps(12), sets: 3, muscleGroup: .shoulders),
        
        Exercise(name: "Shrugs", description: "Perform shrugs by lifting the shoulders toward the ears. This exercise targets the trapezius muscles, contributing to upper back and neck strength.", image: "shrugs", type: .reps(15), sets: 3, muscleGroup: .shoulders),
        
        // Back
        Exercise(name: "Deadlifts", description: "Execute deadlifts by lifting heavy weights from the ground. This compound exercise engages multiple muscle groups, including the lower back, hamstrings, and glutes.", image: "deadlifts", type: .reps(8), sets: 4, muscleGroup: .back),
        
        Exercise(name: "Lat Pulldowns", description: "Complete lat pulldowns using a cable machine. This exercise targets the latissimus dorsi, contributing to upper back and shoulder development.", image: "latpulldowns", type: .reps(12), sets: 3, muscleGroup: .back),
        
        Exercise(name: "Rowing", description: "Conduct rowing exercises using a machine or barbell. This exercise targets the back muscles, promoting strength and definition.", image: "rowing", type: .reps(12), sets: 3, muscleGroup: .back),
        
        Exercise(name: "Hyperextensions", description: "Perform hyperextensions to strengthen the lower back. Lie face down and lift your upper body, engaging the lower back muscles.", image: "hyperextensions", type: .reps(15), sets: 3, muscleGroup: .back),
    ]
}

func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
    let minutes = Int(timeInterval) / 60
    let seconds = Int(timeInterval) % 60
    return String(format: "%d:%02d", minutes, seconds)
}
