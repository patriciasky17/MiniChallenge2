//
//  FreeWriteJournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 04/05/23.
//

import SwiftUI
import PencilKit

struct FreeWriteJournalView: View {
    @State private var showSheetPromptDone = false
    @State private var showQuotesModal = false
    @State private var goToHome = false
    
    @State private var promptNumberNow = 1
    @State private var overallPage = 100
    
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
                    
                    
                    HStack {
                        FreeWriteComponent()
                            
                    }
                    .padding([.leading, .trailing], 20)
                        
                    
                    CanvasView(canvasView: canvasView)
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

struct FreeWriteJournalView_Previews: PreviewProvider {
    static var previews: some View {
        FreeWriteJournalView()
    }
}
