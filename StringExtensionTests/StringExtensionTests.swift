//
//  StringExtensionTests.swift
//  StringExtensionTests
//
//  Created by Sheepy on 15/11/2.
//  Copyright © 2015年 Sheepy. All rights reserved.
//

import XCTest
@testable import StringExtension

class StringExtensionTests: XCTestCase {
    
    let testStr = "01234567.Sheepy@大雪"
    
    var mutableStr = "我变胖了"
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetCharacterByIndex() {
        XCTAssert(testStr[3] == "3")
        XCTAssert(testStr[9] == "S")
        XCTAssert(testStr[15] == "@")
        XCTAssert(testStr[16] == "大")
        XCTAssert(testStr[17] == "雪")
        XCTAssert(testStr[-1] == "雪")
        XCTAssert(testStr[-2] == "大")
    }
    
    func testGetStringByRange() {
        XCTAssert(testStr[0...3] == "0123")
        XCTAssert(testStr[0..<3] == "012")
        XCTAssert(testStr[8...16] == ".Sheepy@大")
    }
    
    func testInsertCharacter() {
        mutableStr.insert("也", atIndex: 1)
        XCTAssert(mutableStr == "我也变胖了")
    }
    
    func testRemoveByIndex() {
        mutableStr.removeAtIndex(1)
        XCTAssert(mutableStr == "我胖了")
    }
    
    func testReverse() {
        XCTAssert(testStr.reverse() == "雪大@ypeehS.76543210")
    }
    
}
