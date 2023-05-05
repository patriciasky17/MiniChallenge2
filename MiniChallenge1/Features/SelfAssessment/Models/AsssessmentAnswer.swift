//
//  AsssessmentModel.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

struct AssessmentAnswer: Identifiable, Hashable{
    let id = UUID()
    var score: Int
    var answerContent: String
}


