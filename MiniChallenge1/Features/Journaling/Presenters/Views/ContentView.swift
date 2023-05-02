//
//  ContentView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 19/04/23.
//

// All View Will Be In Here!

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        //        NavigationStack {
        //            TabView{
        //                Group {
        //                    JournalView()
        //                        .badge(2)
        //                        .tabItem() {
        //                            Label("", systemImage: "book.closed")
        //                        }
        //                        .background(AppColor.neutral20)
        //                    HistoryView()
        //                        .tabItem() {
        //                            Label("", systemImage: "clock.arrow.circlepath")
        //                        }
        //                        .background(AppColor.neutral20)
        //                    ProfileView()
        //                        .tabItem() {
        //                            Label("", systemImage: "person")
        //                        }
        //                        .background(AppColor.neutral20)
        //                }
        //            }
        //
        //            .toolbarColorScheme(.light, for: .tabBar)
        //        }
        //    }
        
        ZStack {
            NavigationView {
                GeometryReader { geometry in
                    List {
                            NavigationLink(destination: JournalView()) {
                                HStack {
                                    Label("", systemImage: "book.closed")
                                        .font(.system(size: 32))
                                    Text("Journals")
                                        .font(.system(size: 20))
                                }
                            }.padding(.bottom, 20)
                        
                            NavigationLink(destination: HistoryView()) {
                                HStack{
                                    Label("", systemImage: "clock.arrow.circlepath")
                                        .font(.system(size: 28))
                                    Text("History")
                                        .font(.system(size: 20))
                                }
                            }.padding(.bottom, 20)
                        
                            NavigationLink(destination: ProfileView()) {
                                HStack{
                                    Label("", systemImage: "person")
                                        .font(.system(size: 32))
                                    Text("Profile")
                                        .font(.system(size: 20))
                                }
                            }
                        Spacer()
                        VStack (alignment: .center){
                            HStack (alignment: .center){
                                Image("clover sidebar")
                            }
                        }
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .padding(.top, (geometry.size.height - (4 * 100)) / 2)
                    .listStyle(SidebarListStyle())
                    .scrollDisabled(true)
                }
                JournalView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
