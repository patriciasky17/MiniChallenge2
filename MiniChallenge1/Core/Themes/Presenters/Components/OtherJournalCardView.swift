//
//  OtherJournalCardView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 26/04/23.
//

import SwiftUI

struct OtherJournalCardView: View {
    @State var userName = "Tessa"
    @State var lastEdited = "May 27th, 2022"
    
    @State var progressBarSize = 80.0
    @State var progress = 0.5
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                NavigationLink (destination: HistoryView()) {
                    HStack (spacing: 0) {
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(AppColor.success)
                            .frame(width: 20, height: 350)
                            .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                        VStack {
                            VStack (spacing: 10) {
                                HStack {
                                    Text("Psychopatic Journal")
                                        .font(.title)
                                        .fontWeight(.medium)
                                        .foregroundColor(AppColor.neutral70)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                HStack {
                                    Text("Last Edited \(lastEdited)")
                                        .foregroundColor(AppColor.green100)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                            
                            Spacer()
                            
                            HStack {
                                Spacer()
                                ZStack {
                                    CircularProgressBar()
                                        .frame(width: progressBarSize, height: progressBarSize)
                                    Text("\(progress * 100, specifier: "%.0f")%")
                                        .font(.title3)
                                        .fontWeight(.semibold)
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
        OtherJournalCardView()
    }
}
