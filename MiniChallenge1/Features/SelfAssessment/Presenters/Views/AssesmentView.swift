//
//  AssesmentView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 28/04/23.
//

import SwiftUI

struct AssesmentView: View {
    @State private var selectedAnswer = ""
    @State private var step = 1
    let totalSteps = 9

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Text("\(step)/\(totalSteps)")
                        .font(body32)
                }
                Spacer()
                Text("Apakah kamu sering terlibat dalam aktivitas yang sejalan dengan nilai dan keyakinan kamu?")
                    .font(subheadline)
                    .foregroundColor(AppColor.green60)
                    .multilineTextAlignment(.leading)
                HStack {
                    MultipleChoices()
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                if step < totalSteps {
                    Button(action: {
                        getToTheNextStep()
                    }) {
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
                    .navigationBarBackButtonHidden(true)
    //                .disabled(selectedAnswer.isEmpty)
                    .padding()
                } else {
                    HStack {
                        Spacer()
                        CircleButtonNext(destination: ContentView())
                    }
                }
                
                
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func getToTheNextStep() {
        if step < totalSteps {
            step += 1
            selectedAnswer = ""
        }
    }
}


struct AssesmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssesmentView()
    }
}
