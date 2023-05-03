//
//  CircularProgressBar.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 26/04/23.
//

import SwiftUI

struct CircularProgressBar: View {
    @Binding var progressBar: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    AppColor.neutral50,
                    lineWidth: 15
                )
            Circle()
                .trim(from: 0, to: progressBar)
                .stroke(
                    AppColor.green60,
                    // 1
                    style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
        .frame(width: 100)
    }
}   

//struct CircularProgressBar_Previews: PreviewProvider {
//    static var previews: some View {
//        CircularProgressBar()
//    }
//}
