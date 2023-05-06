//
//  ModalConfirmationFinishPromptJournal.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct ModalConfirmationFinishPromptJournal: View {
//    @Environment(\.dismiss) var dismiss
    @Binding var showSheetPromptDone: Bool
    @Binding var showQuotesModal: Bool
    
    func close() {
        showSheetPromptDone = false
    }
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack (spacing: 30) {
                    Image(systemName: "exclamationmark.triangle")
                        .font(.system(size: 150))
                        .foregroundColor(AppColor.danger)
                    
                    Text("This action can’t be undone, are you sure want to quit?")
                        .font(body32)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.75)
                    
                    HStack {
                        Button {
                            close()
                            showSheetPromptDone = false
                            showQuotesModal = true
                        } label: {
                            Text("Yes, keep my answer")
                                .font(caption2)
                        }
                        .padding([.top, .bottom], 20)
                        .frame(width: geometry.size.width * 0.8)
                        .background(AppColor.green60)
                        .foregroundColor(AppColor.neutral10)
                        .cornerRadius(10)
//                        .sheet(isPresented: $showOtherModal, content:
//                            ModalFinishPromptView.init)
                    }
                    .padding([.top, .bottom], 20)
                    
                    Button {
                        close()
                    } label: {
                        Text("Nooo, take me back:(")
                            .font(bodyBold)
                            .foregroundColor(AppColor.danger)
                    }
                    .frame(width: geometry.size.width * 0.8)
                    .cornerRadius(10)
                    
                    
                }
                .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.8)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
        }
    }
}

struct ModalConfirmationFinishPromptJournal_Previews: PreviewProvider {
    static var previews: some View {
        ModalConfirmationFinishPromptJournal( showSheetPromptDone: .constant(true), showQuotesModal: .constant(false))
    }
}
