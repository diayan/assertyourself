//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by diayan siat on 15/02/2022.
//

import XCTest
@testable import AssertYourself

class AssertYourselfTests: XCTestCase {
    
    func test_fail()  {
       // XCTFail()
    }
    
    func test_fail_withSimpleMessage() {
        XCTFail("We have a problem")
    }
    
    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The answer to the great question is \(theAnswer)")
    }
    
    func testAssertTrue() {
        let success = false
        XCTAssertTrue(success)
    }
    
    //“ assertion to confirm that an optional value is nil”
    func test_assertNil() {
        let optionalValue: Int? = 23
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNil_withSimpleStruct() {
        let simpleStruct = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(simpleStruct)
    }
    
    func test_assertNil_withSelfDescribingType() {
        let optionalValue: StructWithDescription?  = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }
    
    //XCTAssertEqual with optional arguments
    func test_assertEqual_withOptional() {
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    //XCTAssertEqual with floating point values
    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3)
    }
    
    //“use the accuracy parameter whenever you want to use XCTAssertEqual with Double or Float types.”
    func test_floatingPointFixed() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001)
    }
    
    func test_messageOverkill() {
        let actual = "actual"
        
        XCTAssertEqual(actual, "expected", "Expected \"expected\" but got \"\(actual)\"")
    }
}


struct SimpleStruct {
    let x: Int
    let y: Int
}

struct StructWithDescription: CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String {"(\(x), \(y))"}
}
