//
//  testValidationClass.swift
//  FundosAppTests
//
//  Created by Vitor Ferraz on 10/05/2018.
//  Copyright © 2018 Vitor Ferraz. All rights reserved.
//

import XCTest
@testable import FundosApp

class testValidationClass: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_validationEmail_WhenValid(){
        let sdu = Validator(typefield: TypeField.email)
        XCTAssertEqual(sdu.validateEmail(email: "teste@gmail.com"), true)
    }
    
    func test_validationEmail_WhenNotValid(){
        let sdu = Validator(typefield: TypeField.email)
        XCTAssertEqual(sdu.validateEmail(email: "testegmail.com"), false)
    }
    
    func test_validationPhone_WhenValid(){
        let sdu = Validator(typefield: TypeField.telNumber)
        XCTAssertEqual(sdu.validatePhone(phone: "9999999999"), true)
    }
    
    func test_validationPhone_WhenNotValid(){
        let sdu = Validator(typefield: TypeField.telNumber)
        XCTAssertEqual(sdu.validateEmail(email: "4323"), false)
    }
    
    func test_validationText_WhenEmpty(){
        let sdu = Validator(typefield: TypeField.text)
        XCTAssertEqual(sdu.validate(""), false)
    }
    
}
