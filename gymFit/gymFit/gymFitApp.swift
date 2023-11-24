//
//  gymFitApp.swift
//  gymFit
//
//  Created by Fabio on 11/5/23.
//

import SwiftUI
import ParseSwift

@main
struct gymFitApp: App {
    init() {
        ParseSwift.initialize(applicationId: "8m9cY1kjVuDvV1vlVW9wx0J6ULjyMNvFVacBHn0L",
                                      clientKey: "1z3WRkB35nDS8BB7iGxC2cnPXi0wjjd4E6ODVrA1",
                                      serverURL: URL(string: "https://parseapi.back4app.com")!)
        let query = Exercise.query()
        let exerciseData = try? query.find()
        Exercise.exerciseData = exerciseData ?? []
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
