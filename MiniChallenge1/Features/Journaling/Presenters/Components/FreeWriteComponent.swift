//
//  FreeWriteComponent.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 05/05/23.
//

import SwiftUI

struct FreeWriteComponent: View {
    @State private var pageNumberNow = 1
    @State private var overallPage = 100
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
                        NumberingPage(promptNumberNow: $pageNumberNow, overallPage:$overallPage)
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

struct FreeWriteComponent_Previews: PreviewProvider {
    static var previews: some View {
        FreeWriteComponent()
    }
}
