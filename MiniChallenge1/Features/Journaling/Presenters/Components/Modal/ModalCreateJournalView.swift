//
//  ModalCreateJournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 27/04/23.
//

import SwiftUI

struct ModalCreateJournalView: View {
    @State var journalName = ""
    @Binding var showSheet: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Button("Cancel") {
                        showSheet = false
                    }
                    .padding()
                    
                    Spacer()
                }
                
                HStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(AppColor.info)
                        .frame(width: 20, height: 350)
                        .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                    VStack{
                        HStack {
                            Text("\(journalName)")
                                .font(body32)
                                .foregroundColor(AppColor.green60)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Spacer()
                    }
                    .frame(width: 250, height: 300)
                    .padding(30)
                    .background(
                        ZStack {
                            Rectangle()
                                .foregroundColor(AppColor.neutral10)
                                .frame(width: 400, height: 350)
                            Image("Lines")
            
                        }
                    )
                    .clipped()
                }
                
                Spacer()
                
                VStack (spacing: 10){
                    HStack {
                        Spacer()
                        TextField(
                          "Enter your journal name",
                          text: $journalName,
                          onEditingChanged: { changed in
                            //code here
                          }
                        )
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .padding([.top, .bottom], 5)
                        .multilineTextAlignment(.center)
                        .font(ax5body)
                        Spacer()
                    }
                    Divider()
                        .frame(width: geometry.size.width * 0.8, height: 1)
                        .background(AppColor.neutral20)
                }
                
                Spacer()
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Create")
                            .font(caption2)
                    }
                    .padding()
                    .frame(width: geometry.size.width * 0.8)
                    .background(AppColor.green60)
                    .foregroundColor(AppColor.neutral10)
                    .cornerRadius(10)
                    
                }
                Spacer()
            }
            .padding(20)
        }
    }
}

struct ModalCreateJournalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalCreateJournalView(showSheet: .constant(true))
    }
}
