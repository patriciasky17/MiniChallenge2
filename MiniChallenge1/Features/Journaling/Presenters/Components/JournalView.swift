//
//  JournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 23/04/23.
//

import SwiftUI

struct JournalView: View {
    @State var userName = "Tessa"
    @State var lastEdited = "May 27th, 2022"
    
    @State var progressBarSize = 80.0
    @State var progress = 0.5
    
    @State var presentSheet = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Hi, \(userName)!")
                    .multilineTextAlignment(.leading)
                    .font(.largeTitle)
                Spacer()
            }
            
            ScrollView {
                VStack {
                    VStack (spacing: 30){
                        MainJournalCardView()
                        
                        LazyVGrid (columns: columns, spacing: 370){
                            OtherJournalCardView()
                            OtherJournalCardView()
                            OtherJournalCardView()
                            Button("Modal") {
                                presentSheet = true
                            }
                            
                            
                        }
                        
                            
                        
                    }
                    
                    
                }
            
                
            }
                
            Spacer()
        }
        .sheet(isPresented: $presentSheet) {
            Text("Detail")
                .presentationDetents([.height(250)])

        }
        .padding([.leading, .trailing, .top], 40)
        .background(AppColor.neutral20)
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
