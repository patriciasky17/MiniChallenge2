//
//  JournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 23/04/23.
//

import SwiftUI

struct JournalView: View {
    @State var userName = "Tessa"
    
    @State var priorityJournalNameTitle = "Psychopatic Journal"
    @State var priorityLastEdited = "May 21th, 2022"
    @State var priorityProgressBarSize = 80.0
    @State var priorityProgress = 0.88
    
    @State var lastEdited = "May 24th, 2022"
    @State var journalNameTitle = "Test Journal"
    @State var progressBarSize = 80.0
    @State var progress = 0.4
    
    @State private var showSheet = false
    
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
                        MainJournalCardView(journalNameTitle: $priorityJournalNameTitle, lastEdited: $priorityLastEdited, progressBarSize: $priorityProgressBarSize, progress: $priorityProgress)
                        
                        LazyVGrid (columns: columns, spacing: 370){
                            ForEach(0..<4) { index in
                                if index == 3 {
                                    ButtonMainJournalView()
                                        .padding([.leading], 10)
                                }
                                else if index % 2 == 0 && index != 1 {
                                    OtherJournalCardView(journalNameTitle: $journalNameTitle, lastEdited: $lastEdited, progressBarSize: $progressBarSize, progress: $progress)
                                        .padding([.trailing], 10)
                                } else if index % 2 == 1 {
                                    OtherJournalCardView(journalNameTitle: $journalNameTitle, lastEdited: $lastEdited, progressBarSize: $progressBarSize, progress: $progress)
                                        .padding([.leading], 10)
                                }
                            }
                                                        
                            
                        }
                        
                            
                        
                    }
                    
                    
                }
            
                
            }
                
            Spacer()
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
