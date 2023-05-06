//
//  JournalButtonComponent.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 06/05/23.
//

import SwiftUI

struct JournalButtonComponent: View {
    @State var ColorJournal: Color
    
    @Binding var journalNameTitle: String
    @Binding var lastEdited: String
    
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                HStack(spacing: 0) {
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

struct JournalButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        JournalButtonComponent(ColorJournal: AppColor.green60, journalNameTitle: .constant("Test"), lastEdited: .constant("test"))
    }
}
