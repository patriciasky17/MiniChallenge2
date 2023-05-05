//
//  ProfileView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 23/04/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var userProfileName = "Tessa Manobal"
    @State private var userProfileAge = 26
    @State private var fromProfileView = true
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack(alignment: .center, spacing: 24){
                    //Self Assesment Result
                    HStack{
                        Text("Self Assessment Result")
                            .font(caption2)
                            .foregroundColor(AppColor.green50)
                            .padding([.top, .bottom], 5)
                        Image("HighlightEffectLine1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    
                    SelfAssessmentResult()
                    SelfAssessmentResult()
                    
                    Spacer()
                    
                    HStack {
                        NavigationLink(destination: AssesmentView(fromProfileView: $fromProfileView)) {
                            VStack (spacing: 20) {
                                Text("Retake the test")
                                    .font(caption2)
                            }
                            .padding([.leading], 20)
                            .padding()
                            .frame(width: geometry.size.width * 0.5)
                            .background(AppColor.green60)
                            .foregroundColor(AppColor.neutral10)
                            .cornerRadius(10)
                        }
                        .padding([.top, .bottom], 10)
                    }
                    
                    
                    Spacer()
                }
                .padding([.leading, .trailing, .top, .bottom], 40)
                .frame(width: geometry.size.width)
                .background(AppColor.neutral20)
            }
        }
            
        
        }
       
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
