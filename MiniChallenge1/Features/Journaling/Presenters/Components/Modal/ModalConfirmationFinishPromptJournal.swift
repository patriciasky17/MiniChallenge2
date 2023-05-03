//
//  ModalConfirmationFinishPromptJournal.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct ModalConfirmationFinishPromptJournal: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack (spacing: 30) {
                    Image(systemName: "exclamationmark.triangle")
                        .font(.system(size: 150))
                        .foregroundColor(AppColor.danger)
                    
                    Text("This action can’t be undone, are you sure want to quit?")
                        .font(body32)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Yes, keep my answer")
                                .font(caption2)
                        }
                        .padding([.top, .bottom], 20)
                        .frame(width: geometry.size.width * 0.8)
                        .background(AppColor.green60)
                        .foregroundColor(AppColor.neutral10)
                        .cornerRadius(10)
                    }
                    .padding([.top, .bottom], 20)
                    
                    Button {
                        
                    } label: {
                        Text("Nooo, take me back:(")
                            .font(bodyBold)
                            .foregroundColor(AppColor.danger)
                    }
                    .frame(width: geometry.size.width * 0.8)
                    .cornerRadius(10)
                    
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height)

            }
        }
    }
}

struct ModalConfirmationFinishPromptJournal_Previews: PreviewProvider {
    static var previews: some View {
        ModalConfirmationFinishPromptJournal()
    }
}
