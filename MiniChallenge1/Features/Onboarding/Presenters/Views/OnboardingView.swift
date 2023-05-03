//
//  OnboardingView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 27/04/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                ZStack{
                    HStack {
                        VStack {
                            GeometryReader { geo in
                                HStack(alignment: .top){
                                    Image("Onboarding1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: geo.size.width * 0.875, height: geo.size.height )
                                        .alignmentGuide(.leading, computeValue: { _ in -geo.size.width * 1 }) // align to the leading edge
                                }
                                .frame(maxWidth: .infinity)
                                .offset(x: geo.size.width * 0.38)
                            }
                            
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .leading){
                            Text("Help us Personalize your Journal")
                                .font(title1)
                                .fontWeight(.medium)
                                .padding(.bottom, 16)
                                .foregroundColor(AppColor.green50)
                            Text("Suatu copywriting yang menunjukkan ini buat orang broken home")
                                .font(body24)
                                .foregroundColor(AppColor.green40)
                        }
                        .frame(width: 315)
                        Spacer()
                    }
                    
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            CircleButtonNext(destination: PreSelfAssesment())
                        }
                    }
                }
                Spacer()
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
            .background(AppColor.neutral20)
        }
    }
}
    

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

