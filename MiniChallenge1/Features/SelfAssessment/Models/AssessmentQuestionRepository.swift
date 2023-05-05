//
//  AssessmentQuestionRepository.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 05/05/23.
//

import Foundation
import SwiftUI

class AssessmentQuestionRepository {
    var assessmentQuestions: [AssessmentQuestion] = []
    
    init() {
        let SAS1 = AssessmentQuestion(no: 1, questions: "Apakah kamu sering merasa kewalahan dengan keadaanmu saat ini?", category: .peace)
        let SAS2 = AssessmentQuestion(no: 2, questions: "Apakah kamu merasa memiliki kendali dengan situasi saat ini?", category: .peace)
        let SAS3 = AssessmentQuestion(no: 3, questions: "Apakah kamu terkadang masih sering merasa bersalah akan permasalahan lampau?", category: .peace)
        let SAS4 = AssessmentQuestion(no: 4, questions: "Apakah kamu mengerti akan kelebihan dan kekuranganmu sendiri?", category: .selfAwareness)
        let SAS5 = AssessmentQuestion(no: 5, questions: "Apakah kamu sering melakukan refleksi diri?", category: .selfAwareness)
        let SAS6 = AssessmentQuestion(no: 6, questions: "Apakah kamu memahami emosi diri anda dan dampaknya?", category: .selfAwareness)
        let SAS7 = AssessmentQuestion(no: 7, questions: "Apakah kamu memiliki tujuan hidup yang jelas?", category: .lifePurpose)
        let SAS8 = AssessmentQuestion(no: 8, questions: "Apakah kamu merasa saat ini menjalani hidup yang bermakna?", category: .lifePurpose)
        let SAS9 = AssessmentQuestion(no: 9, questions: "Apakah kamu sering terlibat dalam aktivitas yang sejalan dengan nilai dan keyakinan kamu?", category: .lifePurpose)
            
        assessmentQuestions.append(SAS1)
        assessmentQuestions.append(SAS2)
        assessmentQuestions.append(SAS3)
        assessmentQuestions.append(SAS4)
        assessmentQuestions.append(SAS5)
        assessmentQuestions.append(SAS6)
        assessmentQuestions.append(SAS7)
        assessmentQuestions.append(SAS8)
        assessmentQuestions.append(SAS9)
    }
    
    func getQuestion(index: Int) -> AssessmentQuestion {
        return assessmentQuestions[index]
    }
    
}
