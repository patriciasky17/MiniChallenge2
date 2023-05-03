//
//  HistoryJournalCardView.swift
//  MiniChallenge1
//
//  Created by Joshua on 27/04/23.
//

import SwiftUI

struct HistoryJournalCardView: View {
    @State var lastEdited = "May 27th, 2022"
    
    var body: some View {
        NavigationLink (destination: PromptJournalView()){
                VStack {
                    VStack (spacing: 10) {
                        HStack {
                            Text("Psychopatic Journal")
                                .font(.largeTitle)
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
                    
                }
                .frame(width: .infinity, height: 200)
                .padding(25).padding(.top, 20)
                .background(
                    Rectangle()
                        .foregroundColor(AppColor.neutral10)
                        .frame(width: .infinity, height: 200)
                )
                .cornerRadius(30)
        }
    }
}

struct HistoryJournalCardView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryJournalCardView()
    }
}


