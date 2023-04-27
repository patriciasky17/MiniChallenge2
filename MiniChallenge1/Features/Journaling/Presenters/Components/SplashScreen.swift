//
//  SplashScreen.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 27/04/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isVisible = false
    @State var currentIndex = 0
    
    var imagePaths: Array = ["CloverPath1", "CloverPath2", "CloverPath3", "CloverPath4", "CloverPath5"]
    
    var body: some View {
        if isVisible {
            ContentView()
        } else {
            VStack (spacing: 50) {
                ZStack {
                    ForEach(0..<5) { index in
                        Image("\(imagePaths[index])")
                            .opacity(currentIndex == index ? 1 : 0)
                            .animation(
                                Animation.linear(duration: 1)
                            )
                    }
                }
                .onAppear {
                    let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                        withAnimation {
                            currentIndex += 1
                            if currentIndex > imagePaths.count-2 {
                                timer.invalidate()
                            }
                        }
                    }
                    timer.fire()
                }
                Text("Clover")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.99) {
                    withAnimation(.easeInOut(duration: 1)){
                        isVisible = true
                    }
                }
            }
        }

        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
