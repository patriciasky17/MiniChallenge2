//
//  CircleButtonNext.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct CircleButtonNext<Destination: View>: View {
    var destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
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

struct CircleButtonNext_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        CircleButtonNext(destination: PreSelfAssesment())
    }
}
