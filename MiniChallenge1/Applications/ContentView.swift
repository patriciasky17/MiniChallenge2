//
//  ContentView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 19/04/23.
//

// All View Will Be In Here!

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userDefaultForUser: UserDefaultForUser
    
    var body: some View {
        NavigationSplitView {
            GeometryReader { geometry in
                ZStack{
                    List {
                        NavigationLink(destination: JournalView()) {
                            HStack (spacing: 20) {
                                Label("", systemImage: "book.closed")
                                    .font(.system(size: 32))
                                Text("Journals")
                                    .font(.system(size: 20))
                            }
                            .padding([.leading], 20)
                        }
                        .padding([.top, .bottom], 10)
                        
                        NavigationLink(destination: HistoryView()) {
                            HStack (spacing: 20){
                                Label("", systemImage: "books.vertical")
                                    .font(.system(size: 28))
                                Text("History")
                                    .font(.system(size: 20))
                            }
                            .padding([.leading], 20)
                        }
                        .padding([.top, .bottom], 10)
                        
                        
                        NavigationLink(destination: ProfileView()) {
                            HStack (spacing: 20){
                                Label("", systemImage: "list.clipboard")
                                    .font(.system(size: 28))
                                Text("Profile")
                                    .font(.system(size: 20))
                            }
                            .padding([.leading], 20)
                        }
                        .padding([.top, .bottom], 10)
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .padding(.top, (geometry.size.height - (4 * 100)) / 2)
                    .listStyle(SidebarListStyle())
                    .scrollDisabled(true)
                    .background(AppColor.neutral20)
                    
                    Image("clover sidebar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .padding(.top, (geometry.size.height / 2))
                }
            }
        } detail: {
            VStack {
                JournalView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        ContentView()
    }
}
