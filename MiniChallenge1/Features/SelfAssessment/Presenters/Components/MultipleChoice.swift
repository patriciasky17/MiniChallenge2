//
//  MultipleChoice.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct MultipleChoice: View {
    let letter: String
    let textMultipleChoice: String
    
    var isSelected: Bool
    let onSelect: () -> Void
    
    var body: some View {
        VStack{
            Button(action: {
                onSelect()
            }) {
                HStack (spacing: 30) {
                    Text("\(letter)")
                        .font(caption2)
                        .padding([.top,.bottom])
                        .padding([.leading, .trailing], 25)
                        .background(isSelected ? AppColor.accent : AppColor.neutral40)
                    
                    Text("\(textMultipleChoice)")
                        .font(body32)
                        .foregroundColor(AppColor.neutral100)
                }
            }
            .padding()
            .border(isSelected ? AppColor.neutral100 : Color.clear)
            
        }
    }
}

//struct MultipleChoice_Previews: PreviewProvider {
//    static var previews: some View {
//        MultipleChoice(letter: "A", textMultipleChoice: "Hai", isSelected: true, onSelect: Void )
//    }
//}
