//
//  ButtonMainJournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 27/04/23.
//

import SwiftUI

struct ButtonMainJournalView: View {
    
    @State private var showSheet = false
    @State var journalName = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Button {
                    showSheet.toggle()
                } label: {
                    VStack (spacing: 30) {
                        Image(systemName: "plus")
                            .font(.system(size: 56))
                        Text("Create New Journal")
                            .font(body24)
                    }
                }
                .sheet(isPresented: $showSheet) {
                    ModalCreateJournalView(showSheet: $showSheet)
                }
            }
            .padding(50)
            .frame(width: geometry.size.width)
            .background(AppColor.neutral10)
            .cornerRadius(10)
        }
    }
}

struct ButtonMainJournalView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMainJournalView()
    }
}
