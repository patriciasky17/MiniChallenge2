//
//  HistoryView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 23/04/23.
//

import SwiftUI

struct HistoryView: View {
    @State var items = [
        HistoryJournalCardView(),
        HistoryJournalCardView(),
        HistoryJournalCardView(),
        HistoryJournalCardView()
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("History")
                    .multilineTextAlignment(.leading)
                    .font(.largeTitle)
                Spacer()
            }
            
//            ScrollView {
                VStack {
                    VStack{
                        List{
                            ForEach(0..<4){ index in
                                items[index]
                                    .background(AppColor.neutral10)
                                    .swipeActions {
                                    Button (role: .destructive) {
                                        print("Edit button was tapped")
                                    } label: {
                                        Image(systemName: "minus.circle.fill")
                                            
                                    }
                                        
                                }

                                .padding([.top, .bottom], 10)
                                .listRowSeparator(.hidden)
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                                .listRowBackground(
                                    RoundedRectangle(cornerRadius: 5)
                                        .background(.clear)
                                        .foregroundColor(.clear)
                                        .padding(
                                            EdgeInsets(
                                                top: 2,
                                                leading: 10,
                                                bottom: 2,
                                                trailing: 10
                                            )
                                        )
                                )
                                
                            }
                            .onDelete{ IndexSet in
                                items.remove(atOffsets: IndexSet)
                            }
                        }
                    }
                }
            
                
//            }
                
            Spacer()
        }
        .padding([.leading, .trailing, .top], 40)
        .background(AppColor.neutral20)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
