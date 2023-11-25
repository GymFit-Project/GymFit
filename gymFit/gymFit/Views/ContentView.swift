//
//  ContentView.swift
//  gymFit
//
//  Created by Fabio on 11/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MuscleGroupsView()
                .tabItem {
                    Image(systemName: "figure.mixed.cardio")
                    Text("Muscle Groups")
                }

            AllExercisesView()
                .tabItem {
                    Image(systemName: "figure.run.square.stack")
                    Text("All Exercises")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
