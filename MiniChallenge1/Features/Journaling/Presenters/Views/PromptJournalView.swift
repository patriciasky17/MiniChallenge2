//
//  PromptJournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 27/04/23.
//

import SwiftUI
import PencilKit

struct PromptJournalView: View {
    @State private var showSheetPromptDone = false
    @State private var showQuotesModal = false
    @State private var goToHome = false
    private var canvasView = PKCanvasView()

    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            showSheetPromptDone = true
                        } label: {
                            Text("Done")
                                .font(body24)
                        }
                        .padding([.trailing, .leading], 24)
                        .padding([.top, .bottom], 8)
                        .background(AppColor.info)
                        .foregroundColor(AppColor.neutral10)
                        .cornerRadius(5)
                    }
                    .padding(.trailing, 20)
                    
                    GeometryReader { geometry in
                        PromptComponent()
                    }
                    .frame(height: 220)
                    .padding([.leading, .trailing], 20)
                    
                    if !showSheetPromptDone && !showQuotesModal && goToHome {
                        
                    } else {
                        CanvasView(canvasView: canvasView)
                    }
                    
                }
                //            .border(.red)
                .navigationBarBackButtonHidden()
                
                
            }
            
            if showSheetPromptDone {
                ModalConfirmationFinishPromptJournal( showSheetPromptDone: $showSheetPromptDone, showQuotesModal: $showQuotesModal)
                    .background(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
            } else if showQuotesModal {
                ModalFinishPromptView(showQuotesModal: $showQuotesModal, showSheetPromptDone: $showSheetPromptDone, goToHome: $goToHome)
                    .background(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
            } else if !showSheetPromptDone && !showQuotesModal && goToHome{
                JournalView()
            }
        }

        
    }
}


struct PromptJournalView_Previews: PreviewProvider {
    static var previews: some View {
        PromptJournalView()
    }
}
