//
//  ModalFinishPromptView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 30/04/23.
//

import SwiftUI

struct ModalFinishPromptView: View {
//    @Environment(\.dismiss) var dismiss
    @Binding var showQuotesModal: Bool
    @Binding var showSheetPromptDone: Bool
    @Binding var goToHome: Bool
    @State var quotes = "“Ceritanya ini adalah quotes buat nge empower tralalalala tapi bukan influencer”"
    
    func close() {
        showQuotesModal = false
    }
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack {
                    Image("CloverOutline")
                        .resizable()
                        .scaledToFit()
                        .frame(height: geometry.size.height * 0.45)
                    VStack{
                        Spacer()
                        
                        Text ("\(quotes)")
                            .font(body32)
                            .foregroundColor(AppColor.neutral100)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.6)
                        
                        Spacer()
                        
                        VStack (spacing: 40){
                            HStack {
                                Button {
                                    close()
                                } label: {
                                    Text("Next Prompt")
                                        .font(caption2)
                                }
                                .padding()
                                .frame(width: geometry.size.width * 0.8)
                                .background(AppColor.green60)
                                .foregroundColor(AppColor.neutral10)
                                .cornerRadius(10)
                               
                            }
                            
                            Button {
                                close()
                                goToHome = true
                            } label: {
                                Text("Back to Home")
                                    .font(bodyBold)
                                    .foregroundColor(AppColor.info)
                            }
                            .padding(.bottom, 80)
                        
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
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

struct ModalFinishPromptView_Previews: PreviewProvider {
    static var previews: some View {
        ModalFinishPromptView(showQuotesModal: .constant(true), showSheetPromptDone: .constant(false), goToHome: .constant(false))
    }
}
