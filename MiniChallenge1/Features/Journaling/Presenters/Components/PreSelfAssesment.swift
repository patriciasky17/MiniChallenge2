//
//  PreSelfAssesment.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 02/05/23.
//

import SwiftUI

struct PreSelfAssesment: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                            Text("Self Assessment")
                                .font(title1)
                                .fontWeight(.medium)
                                .padding(.bottom, 16)
                                .foregroundColor(AppColor.green50)
                        HStack (alignment: .top) {
                            Text("You will be guided through a series of questions, to determine which journal you should finish first")
                                    .font(body24)
                                    .fontWeight(.medium)
                                    .padding(.bottom, 16)
                                .foregroundColor(AppColor.green50)
                                .frame(width: 400)
                            ZStack (alignment: .trailing){
                                Image("ArrowDown-Ornament")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                .frame(width: 193, height: 200)
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    Spacer()
                }
                
                VStack {
                        HStack(alignment: .top){
                            Image("PreSelfAssessment-Illustration")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                    }
                    .frame(maxWidth: .infinity)
                }
                VStack {
                    Spacer()
                        .frame(height: 24)
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .frame(width: 100)
                                .foregroundColor(AppColor.green60)
                            Image(systemName: "chevron.right")
                                .foregroundColor(AppColor.neutral10)
                                .font(.system(size: 30))
                        }
                    }
                }
            }
        }
        .padding([.leading, .trailing, .top, .bottom], 40)
        .background(AppColor.neutral10)
    }
}

struct PreSelfAssesment_Previews: PreviewProvider {
    static var previews: some View {
        PreSelfAssesment()
    }
}
