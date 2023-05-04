//
//  MiniChallenge1App.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 19/04/23.
//

import SwiftUI

@main
struct MiniChallenge1App: App {
    let isOpened = UserDefaultForUser().isCompletedAssessment
    let userDefaultForUser = UserDefaultForUser()
    
    var body: some Scene {
        WindowGroup {
            if isOpened {
                ContentView()
                    .environmentObject(userDefaultForUser)
            } else {
                SplashScreen()
                    .environmentObject(userDefaultForUser)
            }
        }
    }
}

// pake user default
