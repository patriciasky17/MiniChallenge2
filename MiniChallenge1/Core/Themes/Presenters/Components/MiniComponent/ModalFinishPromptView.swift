//
//  ModalFinishPromptView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 30/04/23.
//

import SwiftUI

struct ModalFinishPromptView: View {
    @Environment(\.dismiss) var dismiss
    @State var quotes = "“Ceritanya ini adalah quotes buat nge empower tralalalala tapi bukan influencer”"
    
    func close() {
        dismiss()
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Spacer()
                    Button("Done") {
                        close()
                    }
                    .padding()
                   
                }
                
                Spacer()
                
                VStack{
                    HStack{
                        Image("RandomLine")
                            .padding(.leading, 60)
                        Spacer()
                    }
                    .offset(y: 50)
                    
                    Text ("\(quotes)")
                        .font(body32)
                        .foregroundColor(AppColor.neutral100)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.5)
                    
                    HStack{
                        Spacer()
                        Image("BrushVector")
                            .padding(.trailing, 60)

                    }
                    .offset(y: -150)
                }
                
                Spacer()
                Spacer()
                    

            
            }
            .padding(20)
            .interactiveDismissDisabled()
            .frame(width: geometry.size.width, height: geometry.size.height * 0.8)
        }
    }
}

struct ModalFinishPromptView_Previews: PreviewProvider {
    static var previews: some View {
        ModalFinishPromptView()
    }
}
