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
        XCTAssertFalse(lyPresenter.validateUserInput(string: ""))
        XCTAssertFalse(lyPresenter.validateUserInput(string: "546"))
        XCTAssertFalse(lyPresenter.validateUserInput(string: "21213"))
        XCTAssertFalse(lyPresenter.validateUserInput(string: "abjsa"))
        XCTAssertFalse(lyPresenter.validateUserInput(string: "4bj2"))
        XCTAssertTrue(lyPresenter.validateUserInput(string: "2314"))
    }
    
}
