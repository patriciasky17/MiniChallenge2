//
//  OnboardingView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 27/04/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack{
                VStack(alignment: .leading){
                    Text("Help us Personalize your Journal")
                        .font(.largeTitle)
                        .padding(.bottom, 16)
                    Text("Suatu copywriting yang menunjukkan ini buat orang broken home")
                        .font(.title3)
                }
                .frame(width: 300)
                .background(.clear)
                VStack {
                    HStack(alignment: .top){
                        GeometryReader { geo in
                            Image("Onboarding1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.size.width, height: geo.size.height)
                                .clipped()
                                .alignmentGuide(.leading, computeValue: { _ in -geo.size.width * 2 }) // align to the leading edge
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            Spacer()
        }
        .padding([.leading, .trailing, .top, .bottom], 40)
                .background(AppColor.neutral20)
        }
    }
    
    struct OnboardingView_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingView()
        }
    }


//                        .frame(maxWidth: .infinity)
                    //                    .frame(maxWidth: .infinity)
                    //                        .frame(width: 300)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .scaledToFit()
