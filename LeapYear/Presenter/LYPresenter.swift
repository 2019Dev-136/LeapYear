//
//  LYPresenter.swift
//  LeapYear
//
//  Created by 2019_Dev_136 on 3/16/19.
//  Copyright © 2019 2019_Dev_136. All rights reserved.
//

import Foundation

class LYPresenter {
    var enteredYear: String!
    /**
     Method name: validateUserInput
     Parameters:  string. user entered Year
     Output    :  True or False
     Description : If user entered data is valid, returns true else false
     */
    func validateUserInput() -> Bool {
        if((!enteredYear.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty) &&
            (enteredYear.count == LYConstants.four) &&
            Int(enteredYear) != nil &&
            enteredYear.rangeOfCharacter(from: LYConstants.allowedCharacter) != nil) {
            return true
        }
        return false
    }
    
    
}
