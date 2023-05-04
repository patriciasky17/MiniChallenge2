//
//  NumberingPage.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 04/05/23.
//

import SwiftUI

struct NumberingPage: View {
    @Binding var promptNumberNow: Int
    @Binding var overallPage: Int
    
    var body: some View {
        VStack {
            Text("\(promptNumberNow)/\(overallPage)")
                .font(promptNumber)
                .foregroundColor(AppColor.green40)
                .padding([.top, .bottom], 3)
        }
    }
}

struct NumberingPage_Previews: PreviewProvider {
    static var previews: some View {
        NumberingPage(promptNumberNow: .constant(1), overallPage: .constant(100))
    }
}
