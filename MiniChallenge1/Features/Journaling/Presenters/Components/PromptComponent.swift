//
//  PromptComponent.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 21/04/23.
//

import SwiftUI

struct PromptComponent: View {
    @State private var promptNumberNow = 1
    @State private var promptDescription = "Cobalah untuk madi atau mandi air hangat dan biarkan diri Anda rileks sepenuhnya. Bagaiman perasaan kamu ketika kamu bisa beristirahat dan memulihkan tenaga, meskipun ada banyak hal yang terjadi?"
    
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 30) {
                HStack  {
                    Spacer()
                    Image(systemName: "chevron.left")
                        .font(.title3)
                    Spacer()
                    VStack {
                        Text("\(promptNumberNow)/20")
                            .font(promptNumber)
                            .foregroundColor(AppColor.green40)
                            .padding([.top, .bottom], 3)
                        Text("\(promptDescription)")
                            .font(body24)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.6)
                        .font(.subheadline)
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title3)
                    Spacer()
                }
                .frame(width: geometry.size.width)
                
                Divider()
                    .frame(width: geometry.size.width * 1, height: 1)
                    .background(AppColor.neutral20)
            }
        }
    }
}

struct PromptComponent_Previews: PreviewProvider {
    static var previews: some View {
        PromptComponent()
    }
}
