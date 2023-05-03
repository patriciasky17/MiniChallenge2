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
    private var canvasView = PKCanvasView()

    var body: some View {
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
                    .sheet(isPresented: $showSheetPromptDone, content:
                        ModalFinishPromptView.init)
                    
                    
                }
                .padding(.trailing, 20)
                
                GeometryReader { geometry in
                    PromptComponent()
                }
                .frame(height: 220)
                .padding([.leading, .trailing], 20)
                
                CanvasView(canvasView: canvasView)
            }
//            .border(.red)
            .navigationBarBackButtonHidden()
        }

        
    }
}


struct PromptJournalView_Previews: PreviewProvider {
    static var previews: some View {
        PromptJournalView()
    }
}
