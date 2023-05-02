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
        //        NavigationStack {
        //            TabView{
        //                Group {
        //                    JournalView()
        //                        .badge(2)
        //                        .tabItem() {
        //                            Label("", systemImage: "book.closed")
        //                        }
        ////                        .background(AppColor.neutral20)
        //                    HistoryView()
        //                        .tabItem() {
        //                            Label("", systemImage: "clock.arrow.circlepath")
        //                        }
        ////                        .background(AppColor.neutral20)
        //                    ProfileView()
        //                        .tabItem() {
        //                            Label("", systemImage: "person")
        //                        }
        ////                        .background(AppColor.neutral20)
        //                }
        //            }
        //
        //            .toolbarColorScheme(.light, for: .tabBar)
        //        }
        //    }
        
        NavigationView {
            GeometryReader { geometry in
                Group {
                    VStack (alignment: .leading, spacing: 50){
                        NavigationLink(destination: JournalView()) {
                            HStack {
                                Label("", systemImage: "book.closed")
                                    .font(.system(size: 32))
                                Text("Journals")
                                    .font(.system(size: 20))
                            }
                        }
                        NavigationLink(destination: HistoryView()) {
                            HStack{
                                Label("", systemImage: "clock.arrow.circlepath")
                                    .font(.system(size: 28))
                                Text("History")
                                    .font(.system(size: 20))
                            }
                        }
                        NavigationLink(destination: ProfileView()) {
                            HStack{
                                Label("", systemImage: "person")
                                    .font(.system(size: 32))
                                Text("Profile")
                                    .font(.system(size: 20))
                            }
                        }
                    }
                }
                .frame(width: geometry.size.width * 0.5, height: geometry.size.height)
                .padding(.top, (geometry.size.height - (12 * 100)) / 2)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "sidebar.left")
                    }
            }
            }
            JournalView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
