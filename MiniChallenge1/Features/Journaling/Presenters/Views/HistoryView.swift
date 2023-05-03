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
                    .foregroundColor(AppColor.neutral100)
                Spacer()
                Image(systemName: "arrow.up.arrow.down")
            }
            
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

                            
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                            .listRowBackground(
                                RoundedRectangle(cornerRadius: 5)
                                    .background(AppColor.neutral20)
                                    .foregroundColor(AppColor.neutral20)
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
                    .environment(\.defaultMinListRowHeight, 280) //minimum row height
                    
                }
            }
                
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
