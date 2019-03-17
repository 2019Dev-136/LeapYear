//
//  LYPresenterTests.swift
//  LeapYearTests
//
//  Created by 2019_Dev_136 on 3/16/19.
//  Copyright © 2019 2019_Dev_136. All rights reserved.
//

import XCTest
@testable import LeapYear

class LYPresenterTests: XCTestCase {
    
    func testValidateUserInput(){
        let lyPresenter = LYPresenter()
        lyPresenter.enteredYear = ""
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "546"
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "21213"
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "abjsa"
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "4bj2"
        XCTAssertFalse(lyPresenter.validateUserInput())

        lyPresenter.enteredYear = "4351"
        XCTAssertTrue(lyPresenter.validateUserInput())
    }
    
}
