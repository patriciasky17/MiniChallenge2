//
//  AssessmentQuestion.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

struct AssessmentQuestion: Identifiable, Hashable{
    let id = UUID()
    var isDone: Bool
    var questionContent: String
}
