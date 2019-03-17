//
//  LYPresenter.swift
//  LeapYear
//
//  Created by 2019_Dev_136 on 3/16/19.
//  Copyright © 2019 2019_Dev_136. All rights reserved.
//

import Foundation

class LYPresenter {
    
    /**
     Method name: validateUserInput
     Parameters:  string. user entered Year
     Output    :  True or False
     Description : If user entered data is valid, returns true else false
     */
    func validateUserInput(string: String) -> Bool {
        if((!string.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty) &&
            (string.count <= LYConstants.four) &&
            Int(string) != nil &&
            string.rangeOfCharacter(from: LYConstants.allowedCharacter) != nil) {
            return true
        }
        return false
    }
}
