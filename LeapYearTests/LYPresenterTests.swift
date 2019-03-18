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
    let lyPresenter = LYPresenter()
    
    func testValidateUserInput(){
        lyPresenter.enteredYear = ""
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "21213"
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "43 56"
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "4bj2"
        XCTAssertFalse(lyPresenter.validateUserInput())

        lyPresenter.enteredYear = "0200"
        XCTAssertFalse(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "  2100  "
        XCTAssertTrue(lyPresenter.validateUserInput())
        
        lyPresenter.enteredYear = "2100"
        XCTAssertTrue(lyPresenter.validateUserInput())
    }
    
    func testIsLeapYear(){
        lyPresenter.enteredYear = "2000"
        XCTAssertTrue(lyPresenter.isLeapYear())
        
        lyPresenter.enteredYear = "1900"
        XCTAssertFalse(lyPresenter.isLeapYear())
        
        lyPresenter.enteredYear = "2012"
        XCTAssertTrue(lyPresenter.isLeapYear())
        
        lyPresenter.enteredYear = "2019"
        XCTAssertFalse(lyPresenter.isLeapYear())
    }
    
}
