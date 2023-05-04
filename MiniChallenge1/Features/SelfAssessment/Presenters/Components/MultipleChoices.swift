//
//  MultipleChoices.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct MultipleChoices: View {
    let letters: [String] = ["A", "B", "C", "D"]
    let choices: [String] = ["Tidak pernah", "Jarang", "Terkadang", "Sering"]
    
    @Binding var selectedIndex: Int
    @Binding var selectedAnswer: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            ForEach(choices.indices, id: \.self) { index in
                MultipleChoice(letter: letters[index],
                   textMultipleChoice: choices[index],
                   isSelected: selectedIndex == index,
                   onSelect: {
                    selectedIndex = index
                    selectedAnswer = choices[index]
                    print(selectedAnswer)
                })
            }
        }
    }
}

struct MultipleChoices_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoices(selectedIndex: .constant(2), selectedAnswer: .constant("Tidak Pernah"))
    }
}
