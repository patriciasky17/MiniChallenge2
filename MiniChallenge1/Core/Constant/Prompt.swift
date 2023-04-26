//
//  Prompt.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 21/04/23.
//

// This prompt will be used for title, description and label button.
// This is not used for detail prompt in journaling section, this one is only for general purposes

import Foundation

struct Prompt { private init() {} }

extension Prompt {
    static let noHistory = "No History"
}

extension Prompt {
    struct Title {
        static let selfAssessment = "Self-Assessment"
        static let history = "History"
        static let profile = "Profile"
        static let editProfile = "Edit Profile"
        static let yourHomeProfile = "Hi, User!"
        
        static let selfAssessmentResult = "Self-Assessment Result"
        static let date = "Date"
        static let result = "Result"
       
        static let lastEdited = "Last Edited"
        
        static let name = "Name"
        static let dateOfBirth = "Date of Birth"
        
        private init() {}
    }
}

extension Prompt {
    struct Button {
        static let next = "Next"
        static let back = "Back"
        static let edit = "Edit"
        static let save = "Save"
        static let resetProfile = "Reset Profile"
        
        private init() {}
    }
}

