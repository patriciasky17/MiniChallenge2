//
//  SheetPresentationModifier.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 26/04/23.
//

import Foundation
import SwiftUI

struct SheetPresentationModifier: ViewModifier {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    func body(content: Content) -> some View {
        if horizontalSizeClass == .compact {
            return AnyView(content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.5))
                .edgesIgnoringSafeArea(.all)
                .modalPresentationStyle(.automatic)
            )
        } else {
            return AnyView(content
                .frame(width: 500, height: 500)
                .background(Color.white)
                .modalPresentationStyle(.formSheet)
                .prefersScrollViewNestedInsideNavigationView(true)
            )
        }
    }
}
