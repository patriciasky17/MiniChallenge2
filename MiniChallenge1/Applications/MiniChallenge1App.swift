//
//  MiniChallenge1App.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 19/04/23.
//

import SwiftUI

@main
struct MiniChallenge1App: App {
    @State var hasDoneTheAssessment: Bool = false

    var body: some Scene {
        WindowGroup {
            if hasDoneTheAssessment {
                ContentView()
            } else {
                SplashScreen()
            }
        }
    }
}

// pake user default
