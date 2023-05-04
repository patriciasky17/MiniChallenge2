//
//  AssesmentView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 28/04/23.
//

import SwiftUI

struct AssesmentView: View {
    @State private var selfAssessmentQuestions: [String] = ["Apakah demikian?", "Apakah kamu sering terlibat dalam aktivitas yang sejalan dengan nilai dan keyakinan kamu?"]
    @State private var selectedAnswer = ""
    @State private var selectedIndex = -1
    @State private var step = 1
    var totalSteps: Int = 0
    
    init() {
        totalSteps = selfAssessmentQuestions.count
    }
    
    var currentQuestion: String {
        selfAssessmentQuestions[step-1]
    }

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Text("\(step)/\(totalSteps)")
                        .font(body32)
                }
                Spacer()
                Text("\(currentQuestion)")
                    .font(subheadline)
                    .foregroundColor(AppColor.green60)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                HStack {
                    MultipleChoices(selectedIndex: $selectedIndex, selectedAnswer: $selectedAnswer)
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                if step == totalSteps {
                    HStack {
                        Spacer()
                        CircleButtonNext(destination: ContentView()).disabled(selectedAnswer.isEmpty)
                    }
                } else {
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
                    .disabled(selectedAnswer.isEmpty)
                    .padding()
                }
                
                
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func getToTheNextStep() {
        if step == totalSteps {

        } else {
            step += 1
            selectedAnswer = ""
            selectedIndex = -1
        }
    }
}


struct AssesmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssesmentView()
    }
}
