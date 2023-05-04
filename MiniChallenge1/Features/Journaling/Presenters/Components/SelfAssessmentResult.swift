//
//  SelfAssessmentResult.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 04/05/23.
//

import SwiftUI

struct SelfAssessmentResult: View {
    var body: some View {
        VStack{
            HStack{
            Text("Date")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(AppColor.green50)
            Spacer()
            Text("December 3rd, 2022")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(AppColor.green50)
            }
            .padding(.bottom, 16)
            HStack{
                Text("Result")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(AppColor.green50)
                Spacer()
            }
            .padding(.bottom,12)
            
            VStack(spacing: 8){
                HStack{
                    Text("Criteria 1")
                            .font(body24)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    Spacer()
                    Text("33%")
                            .font(body24)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                }
                .padding(.vertical, 8)
                
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(AppColor.neutral20)
                
                HStack{
                    Text("Criteria 2")
                            .font(body24)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    Spacer()
                    Text("33%")
                            .font(body24)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                }
                .padding(.vertical, 8)
                
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(AppColor.neutral20)
                
                HStack{
                    Text("Criteria 3")
                            .font(body24)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    Spacer()
                    Text("33%")
                        .font(body24)
                        .fontWeight(.regular)
                        .foregroundColor(AppColor.green50)
                }
                .padding(.vertical, 8)
            }
            
        }
        .padding(24)
        .background(.white)
        .cornerRadius(12)
    }
}

struct SelfAssessmentResult_Previews: PreviewProvider {
    static var previews: some View {
        SelfAssessmentResult()
    }
}
