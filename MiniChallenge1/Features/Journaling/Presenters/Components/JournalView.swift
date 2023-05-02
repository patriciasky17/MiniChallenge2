//
//  JournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 23/04/23.
//

import SwiftUI

struct JournalView: View {
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
            ScrollView {
                VStack {
                    VStack (spacing: 30){
                        MainJournalCardView(journalNameTitle: $priorityJournalNameTitle, lastEdited: $priorityLastEdited, progressBarSize: $priorityProgressBarSize, progress: $priorityProgress)
                        
                        LazyVGrid (columns: columns, spacing: 30){
                            ForEach(0..<6) { index in
                                if index % 2 == 0 && index != 1 {
                                    OtherJournalCardView(journalNameTitle: $journalNameTitle, lastEdited: $lastEdited, progressBarSize: $progressBarSize, progress: $progress, ColorJournal: AppColor.success)
                                        .padding([.trailing], 10)
                                        .frame(height: 350)
                                } else if index % 2 == 1 {
                                    OtherJournalCardView(journalNameTitle: $journalNameTitle, lastEdited: $lastEdited, progressBarSize: $progressBarSize, progress: $progress, ColorJournal: AppColor.info)
                                        .frame(height: 350)
                                        .padding([.leading], 10)
                                }
                            }
                                                        
                            
                        }

                        ButtonMainJournalView()
                            .frame(height: 210)
                        
                        
                            
                        
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
