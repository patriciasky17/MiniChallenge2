//
//  AssesmentView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 28/04/23.
//

import SwiftUI

struct AssesmentView: View {
    @EnvironmentObject var userDefaultForUser: UserDefaultForUser
    
    @StateObject private var assessmentViewModels = AssessmentViewModels()
    
    
    @Binding var fromProfileView: Bool
    

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Text("\(assessmentViewModels.step)/\(assessmentViewModels.totalSteps)")
                        .font(body32)
                }
                Spacer()
                Text("\(assessmentViewModels.getQuestion().questions)")
                    .font(subheadline)
                    .foregroundColor(AppColor.green60)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                HStack {
                    MultipleChoices(assessmentViewModels: assessmentViewModels)
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                if assessmentViewModels.step == assessmentViewModels.totalSteps {
                    HStack {
                        Spacer()
                        if assessmentViewModels.selectedAnswer.isEmpty {
                            CircleButtonNext(destination: ContentView()).disabled(assessmentViewModels.selectedAnswer.isEmpty)
                        } else {
                            if fromProfileView{
                                CircleButtonNext(destination: JournalView()).disabled(assessmentViewModels.selectedAnswer.isEmpty)
                            } else {
                                CircleButtonNext(destination: ContentView())
                                    .disabled( assessmentViewModels.selectedAnswer.isEmpty)
                                    .simultaneousGesture(TapGesture().onEnded{
                                        
                                        UserDefaults.standard.set(true, forKey: "isCompletedAssessment")
                                        userDefaultForUser.isCompletedAssessment = UserDefaults.standard.bool(forKey: "isCompletedAssessment")
                                        print(userDefaultForUser.isCompletedAssessment)
                                    })
                            }
                        }
                        
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
                    .disabled(assessmentViewModels.selectedAnswer.isEmpty)
                    .padding()
                }
                
                
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func getToTheNextStep() {
        if assessmentViewModels.step == assessmentViewModels.totalSteps {

        } else {
            assessmentViewModels.step += 1
            assessmentViewModels.selectedAnswer = ""
            assessmentViewModels.selectedIndex = -1
        }
    }
}


struct AssesmentView_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        AssesmentView(fromProfileView: .constant(false))
    }
}
