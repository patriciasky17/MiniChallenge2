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
    
    @State private var selectedIndex: Int?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            ForEach(choices.indices, id: \.self) { index in
                MultipleChoice(letter: letters[index],
                   textMultipleChoice: choices[index],
                   isSelected: selectedIndex == index,
                   onSelect: {
                    selectedIndex = index
                })
            }
        }
    }
}

struct MultipleChoices_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoices()
    }
}
