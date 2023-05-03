//
//  testSidebar.swift
//  MiniChallenge1
//
//  Created by Joshua on 02/05/23.
//

import SwiftUI

struct testSidebar: View {
    var body: some View {
        VStack{
            NavigationView{
                List{
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
                .listStyle(SidebarListStyle())
            }
        }
    }
}

struct testSidebar_Previews: PreviewProvider {
    static var previews: some View {
        testSidebar()
    }
}
