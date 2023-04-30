//
//  ProfileEditView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 01/05/23.
//

import SwiftUI

struct ProfileEditView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 24){
            Spacer()
            VStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .foregroundColor(AppColor.neutral70)
                    .padding(.bottom, 12)
                ZStack{
                    Text("Change Image")
                        .font(.title3)
                        .foregroundColor(AppColor.green90)
                        .padding()
                        .background(AppColor.green10)
                        .cornerRadius(10)
                    }
                }
            Spacer()
                .frame(height: 48)
            HStack(spacing: 12) {
                Text("Name")
                    .padding(8)
                    .font(.title2)
                Text("Nana Karisma")
                    .padding(8)
                    .font(.title2)
                Spacer()
                Image(systemName: "pencil")
                    .font(Font.system(size: 24))
                    .foregroundColor(.gray)
            }
//            .frame(width: 600)
            .padding(12)
            .overlay(Rectangle().frame(height: 1).foregroundColor(.gray.opacity(0.5)), alignment: .bottom)
            
            HStack(spacing: 12) {
                Text("Birthday")
                    .padding(8)
                    .font(.title2)
                Text("March 27, 2001")
                    .padding(8)
                    .font(.title2)
                Spacer()
                Image(systemName: "chevron.down")
                    .font(Font.system(size: 24))
                    .foregroundColor(.gray)
            }
//            .frame(width: 600)
            .padding(12)
            .overlay(Rectangle().frame(height: 1).foregroundColor(.gray.opacity(0.5)), alignment: .bottom)
            Spacer()
            Button(action: {
                        // Action for Save button
                        print("Save button tapped!")
                    }) {
                        Text("Save")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .font(.title)
                            .padding(.vertical, 12)
                            .padding(.horizontal, 16)
                            .background(AppColor.green50)
                            .cornerRadius(8)
                    }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding([.leading, .trailing, .top, .bottom], 40)
        .background(.white)
        
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
    }
}
