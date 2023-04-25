//
//  PromptComponent.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 21/04/23.
//

import SwiftUI

struct PromptComponent: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct PromptComponent_Previews: PreviewProvider {
    static var previews: some View {
        PromptComponent()
    }
}
