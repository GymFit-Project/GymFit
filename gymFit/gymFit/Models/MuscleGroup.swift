//
//  WorkoutPlans.swift
//  gymFit
//
//  Created by Anthony Khera on 11/5/23.
//

import Foundation
import ParseSwift
import SwiftUI

struct MuscleGroup: ParseObject {
    var originalData: Data?
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseSwift.ParseACL?
    
    var name:String?
    var image:ParseFile?
}

