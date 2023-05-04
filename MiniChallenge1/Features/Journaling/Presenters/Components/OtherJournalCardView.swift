//
//  OtherJournalCardView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 26/04/23.
//

import SwiftUI

struct OtherJournalCardView: View {
    @Binding var journalNameTitle: String
    @Binding var lastEdited: String
    
    @Binding var progressBarSize: Double
    @Binding var progress: Double
    
//    @Binding var destinationView: any View
    
    @State var ColorJournal: Color
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                NavigationLink (destination: PromptJournalView()) {
                    HStack (spacing: 0) {
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(ColorJournal)
                            .frame(width: 20, height: 350)
                            .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                        VStack {
                            VStack (spacing: 10) {
                                HStack {
                                    Text("\(journalNameTitle)")
                                        .font(journalTitle)
                                        .foregroundColor(AppColor.green60)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                HStack {
                                    Text("Last Edited \(lastEdited)")
                                        .font(caption16)
                                        .foregroundColor(AppColor.green30)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                            
                            Spacer()
                            
                            HStack {
                                Spacer()
                                ZStack {
                                    CircularProgressBar(progressBar: $progress)
                                        .frame(width: progressBarSize, height: progressBarSize)
                                    Text("\(progress * 100, specifier: "%.0f")%")
                                        .font(bodyBold)
                                        .foregroundColor(AppColor.green60)
                                }
                            }
                        }
                        .frame(width: .infinity, height: 300)
                        .padding(30)
                        .background(
                            ZStack {
                                Rectangle()
                                    .foregroundColor(AppColor.neutral10)
                                    .frame(width: .infinity, height: 350)
                                Image("Lines")
                
                            }
                        )
                        .clipped()
                        
                    }
                        
                        
                }
            }
        }
    }
}

struct OtherJournalCardView_Previews: PreviewProvider {
    static var previews: some View {
        OtherJournalCardView(journalNameTitle: .constant("Test"), lastEdited: .constant("27 Maret"), progressBarSize: .constant(100), progress: .constant(0.1), ColorJournal: AppColor.green10)
    }
}
