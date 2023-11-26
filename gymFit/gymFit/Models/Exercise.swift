//
//  ExerciseModel.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import Foundation
import ParseSwift

struct Exercise: ParseObject {
    var originalData: Data?
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseSwift.ParseACL?
    
    var name: String?
    var description: String?
    var image: ParseFile?
    var sets: Int?
    var isRepBased: Bool?
    var muscleGroup: MuscleGroup?
    var reps: Int?
    var duration: Int?
    
}
extension Exercise{
    static var exerciseData: [Exercise] = []
}

func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
    let minutes = Int(timeInterval) / 60
    let seconds = Int(timeInterval) % 60
    return String(format: "%d:%02d", minutes, seconds)
}
