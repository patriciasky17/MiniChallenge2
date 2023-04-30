//
//  MainJournalCardView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 26/04/23.
//

import SwiftUI

struct MainJournalCardView: View {
    @Binding var journalNameTitle: String
    @Binding var lastEdited: String
    
    @Binding var progressBarSize: Double
    @Binding var progress: Double
    
    var body: some View {
        NavigationLink (destination: HistoryView()){
            HStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(AppColor.success)
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
                                .font(caption24)
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
                                .fontWeight(.semibold)
                                .foregroundColor(AppColor.green60)
                        }
                    }
                }
                .frame(width: .infinity, height: 280)
                .padding(25)
                .background(
                    ZStack {
                        Rectangle()
                            .foregroundColor(AppColor.neutral10)
                            .frame(width: .infinity, height: 350)
                        Image("Lines")
                    }
                )
                
            }
                
                
        }
    }
}

struct MainJournalCardView_Previews: PreviewProvider {
    static var previews: some View {
        MainJournalCardView(journalNameTitle: .constant("test"), lastEdited:.constant("27 Maret"), progressBarSize: .constant(100), progress: .constant(0.1))
    }
}
