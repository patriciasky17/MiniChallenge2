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
        NavigationStack{
            GeometryReader { geometry in
                ZStack {
                    Image("CloverOutline")
                    VStack{
                        Spacer()
                        Text ("\(quotes)")
                            .font(body32)
                            .foregroundColor(AppColor.neutral100)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.5)
                        
                        Spacer()
                        
                        VStack (spacing: 40){
                            HStack {
                                Button {
                                    close()
                                    NavigationLink(destination: ProfileView()) {
                                        Text("Test")
                                    }
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
                            
                            NavigationLink(destination: JournalView()) {
                                Text("Back to Home")
                                    .font(bodyBold)
                                    .foregroundColor(AppColor.info)
                            }
                        }
                        
                        
                        
                        
                    }
                    
                }
                .padding(20)
                .interactiveDismissDisabled()
                .frame(width: geometry.size.width, height: geometry.size.height * 0.8)
            }
        }
    }
}

struct ModalFinishPromptView_Previews: PreviewProvider {
    static var previews: some View {
        ModalFinishPromptView()
    }
}
