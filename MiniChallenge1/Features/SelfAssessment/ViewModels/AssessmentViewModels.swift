//
//  AssessmentViewModels.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

class AssessmentViewModels: ObservableObject {
    
    var assessmentQuestionRepository = AssessmentQuestionRepository()
    
    @Published var assessmentMultipleChoices = [
        "A" : "Tidak Pernah",
        "B" : "Jarang",
        "C" : "Kadang - Kadang",
        "D" : "Sering"
    ]
    
    var totalSteps: Int {
        assessmentQuestionRepository.assessmentQuestions.count
    }
    
    
    func getQuestion() -> AssessmentQuestion {
        return assessmentQuestionRepository.getQuestion(index: step - 1)
    }
    
    @Published var selectedAnswer = ""
    @Published var selectedIndex = -1
    @Published var step = 1
}
