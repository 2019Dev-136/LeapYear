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
     Method name : validateUserInput
     Output      : True or False
     Description : If user entered data is valid, returns true else false
     */
    func validateUserInput() -> Bool {
        enteredYear = enteredYear.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // check for four digit numeric value
        if((!enteredYear.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty) &&
            (enteredYear.count == LYConstants.four) &&
            Int(enteredYear) != nil &&
            Int(enteredYear)! >= LYConstants.minYear) {
            return true
        }
        return false
    }
    
    /**
     Method name : isLeapYear
     Output      : True or False
     Description : If user entered year is leap, returns true else false
     */
    func isLeapYear() -> Bool {
        let year = Int(enteredYear)!
        let result = (year % LYConstants.fourHundred == LYConstants.zero) || ((year % LYConstants.four == LYConstants.zero) && (year % LYConstants.hundred != LYConstants.zero))
        return result
    }
}
