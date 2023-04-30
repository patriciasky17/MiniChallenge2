//
//  ProfileView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 23/04/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 24){
            
//Profile Section
            VStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .foregroundColor(AppColor.neutral70)
                    .padding(.bottom, 12)
                HStack{
                    Text("User Profile Name")
                        .font(.title)
                        .foregroundColor(AppColor.green50)
                    Text(",")
                        .font(.title)
                        .foregroundColor(AppColor.green50)
                    Text("Age")
                        .font(.title)
                        .foregroundColor(AppColor.green50)
                }
                .padding(12)
            }
                Text("Edit Profile")
                        .font(.title3)
                        .foregroundColor(AppColor.green90)
                        .padding()
                        .background(AppColor.green10)
                        .cornerRadius(10)
            Spacer()
                    .frame(height: 32)
//Self Assesment Result
            HStack{
                Text("Self Assessment Result")
                    .font(.title)
                    .foregroundColor(AppColor.green50)
                    .fontWeight(.medium)
                    .padding([.top, .bottom],12)
                Spacer()
            }
            .frame(maxWidth: .infinity)
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
                .padding(.bottom,8)
                VStack(spacing: 8){
                    HStack{
                    Text("Criteria 1")
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    Spacer()
                    Text("33%")
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    }
                    HStack{
                    Text("Criteria 2")
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    Spacer()
                    Text("33%")
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    }
                    HStack{
                    Text("Criteria 3")
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    Spacer()
                    Text("33%")
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(AppColor.green50)
                    }
                }
                .padding(.leading, 32)
                
            }
            .padding(24)
            .background(.white)
            .cornerRadius(12)
            Spacer()
                            .frame(height: 64)
                            .layoutPriority(1)
            Button(action: {
                // Code to handle delete button tap
            }) {
                Text("Reset Profile")
                    .foregroundColor(.red)
                    .font(.title2)
                    .fontWeight(.medium)
                    .frame(width:128, height: 64)
                    .padding(12)
            }
            Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding([.leading, .trailing, .top, .bottom], 40)
            .background(AppColor.neutral20)
            
        
        }
       
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
