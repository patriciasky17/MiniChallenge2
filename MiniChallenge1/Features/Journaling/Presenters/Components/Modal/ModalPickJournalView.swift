//
//  ModalPickJournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 06/05/23.
//

import SwiftUI

struct ModalPickJournalView: View {
    @State var journalName = ""
    @Binding var showSheet: Bool
    
    @State var lastEdited = "May 24th, 2022"
    @State var journalNameTitle = "Test Journal"
    @State var progressBarSize = 80.0
    @State var progress = 0.4
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Button("Cancel") {
                        showSheet = false
                    }
                    .padding()
                    
                    Spacer()
                }
                
                
                Spacer()
                
                VStack {
                    LazyVGrid (columns: columns, spacing: 30){
                        JournalButtonComponent(ColorJournal: AppColor.success, journalNameTitle: $journalNameTitle, lastEdited: $lastEdited)
                                .padding([.trailing], 10)
                                .frame(height: 350)
                        
                        JournalButtonComponent(ColorJournal: AppColor.success, journalNameTitle: $journalNameTitle, lastEdited: $lastEdited)
                                .padding([.trailing], 10)
                                .frame(height: 350)
                        
                        JournalButtonComponent(ColorJournal: AppColor.success, journalNameTitle: $journalNameTitle, lastEdited: $lastEdited)
                                .padding([.trailing], 10)
                                .frame(height: 350)
                        
                        JournalButtonComponent(ColorJournal: AppColor.info, journalNameTitle: $journalNameTitle, lastEdited: $lastEdited)
                                .padding([.trailing], 10)
                                .frame(height: 350)
                            
                            
                        
                    }


                    
                        
                    
                }
                
                Spacer()
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Create")
                            .font(caption2)
                    }
                    .padding()
                    .frame(width: geometry.size.width * 0.8)
                    .background(AppColor.green60)
                    .foregroundColor(AppColor.neutral10)
                    .cornerRadius(10)
                    
                }
                Spacer()
            }
            .padding(20)
        }
    }
}

struct ModalPickJournalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalPickJournalView(showSheet: .constant(true))
    }
}
