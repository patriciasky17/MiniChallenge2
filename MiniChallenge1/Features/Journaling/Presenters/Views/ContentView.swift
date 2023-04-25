//
//  ContentView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 19/04/23.
//

// All View Will Be In Here!

import SwiftUI

struct ContentView: View {
    
    init() {
        let image = UIImage.gradientImageWithBounds(
            bounds: CGRect( x: 0, y: 0, width: UIScreen.main.scale, height: 4),
            colors: [
                UIColor.clear.cgColor,
                UIColor.black.withAlphaComponent(0.05).cgColor
            ]
        )

        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor.systemGray6
                
        appearance.backgroundImage = UIImage()
        appearance.shadowImage = image

        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView{
            Group {
                JournalView()
                    .badge(2)
                    .tabItem() {
                        Label("", systemImage: "book.closed")
                    }
                HistoryView()
                    .tabItem() {
                        Label("", systemImage: "clock.arrow.circlepath")
                    }
                ProfileView()
                    .tabItem() {
                        Label("", systemImage: "person")
                    }
            }
        }
        .toolbarColorScheme(.light, for: .tabBar)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
