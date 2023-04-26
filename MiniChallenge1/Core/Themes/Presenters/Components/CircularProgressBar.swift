//
//  CircularProgressBar.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 26/04/23.
//

import SwiftUI

struct CircularProgressBar: View {  
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.pink.opacity(0.5),
                    lineWidth: 15
                )
            Circle()
                .trim(from: 0, to: 0.25)
                .stroke(
                    Color.pink,
                    // 1
                    style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
    }
}   

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar()
    }
}
