//
//  NewSidebarTest.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct NewSidebarTest: View {
    var body: some View {
        NavigationSplitView {
            GeometryReader { geometry in
                ZStack{
                    List {
                        NavigationLink(destination: JournalView()) {
                            HStack {
                                Label("", systemImage: "book.closed")
                                    .font(.system(size: 32))
                                Text("Journals")
                                    .font(.system(size: 20))
                            }
                        }
                        .padding([.top, .bottom], 20)
                        
                        NavigationLink(destination: HistoryView()) {
                            HStack{
                                Label("", systemImage: "clock.arrow.circlepath")
                                    .font(.system(size: 28))
                                Text("History")
                                    .font(.system(size: 20))
                            }
                        }
                        .padding([.top, .bottom], 20)
                        
                        NavigationLink(destination: ProfileView()) {
                            HStack{
                                Label("", systemImage: "person")
                                    .font(.system(size: 32))
                                Text("Profile")
                                    .font(.system(size: 20))
                            }
                        }
                        .padding([.top, .bottom], 20)
                        
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
    }
}

struct NewSidebarTest_Previews: PreviewProvider {
    static var previews: some View {
        NewSidebarTest()
    }
}
