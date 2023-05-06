//
//  AssessmentQuestion.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

enum AssessmentCategory {
    case peace
    case selfAwareness
    case lifePurpose
}

struct AssessmentQuestion {
    var no: Int
    var questions: String
    var category: AssessmentCategory
}
