//
//  ProfileEditView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 01/05/23.
//

import SwiftUI

struct ProfileEditView: View {
    @State var birthDate = Date.now
    @State var profileName = "Nana Karisma"
    
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
                Text("Change Image")
                    .font(.title3)
                    .foregroundColor(AppColor.green90)
                    .padding()
                    .background(AppColor.green10)
                    .cornerRadius(10)
                    
                }
            Spacer()
                .frame(height: 48)
            HStack(spacing: 12) {
                Text("Name")
                    .padding(8)
                    .font(body24)
                Spacer()
                TextField(
                  "Enter your journal name",
                  text: $profileName,
                  onEditingChanged: { changed in
                    //code here
                  }
                )
                .font(body24)
            }
            .padding(12)
            .overlay(Rectangle().frame(height: 1).foregroundColor(.gray.opacity(0.5)), alignment: .bottom)
            
            HStack(spacing: 12) {
                Text("Birthday")
                    .padding(8)
                    .font(.title2)

                DatePicker("", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())

            }
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
