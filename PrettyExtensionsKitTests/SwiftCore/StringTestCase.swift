//
//  StringTestCase.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 1/31/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
@testable import PrettyExtensionsKit

class StringTestCase: XCTestCase {
    
    let testString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    
    func testChoppedPrefix() {
        let choppedString = testString.prettyChoppedPrefix(6)
        XCTAssertEqual(choppedString, "ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    }

    func testChoppedPrefixWithNegativeCount() {
        let choppedString = testString.prettyChoppedPrefix(-3636)
        XCTAssertEqual(choppedString, testString)
    }

    func testChoppedPrefixWithNumberGreaterThanStringLenght() {
        let choppedString = testString.prettyChoppedPrefix(3636)
        XCTAssertEqual(choppedString.count, 0)
    }

    func testChoppedSuffix() {
        let choppedString = testString.prettyChoppedSuffix(67)
        XCTAssertEqual(choppedString, "Lorem ipsum dolor sit amet, consectetur adipiscing elit")
    }

    func testChoppedSuffixWithNegativeCount() {
        let choppedString = testString.prettyChoppedSuffix(-3636)
        XCTAssertEqual(choppedString, testString)
    }

    func testChoppedSuffixWithNumberGreaterThanStringLenght() {
        let choppedString = testString.prettyChoppedSuffix(3636)
        XCTAssertEqual(choppedString.count, 0)
    }

    func testQuotedStrings() {
        XCTAssertEqual("TestString".prettyQuoted(), "\"TestString\"")
        XCTAssertEqual("TestString".prettyQuoted(withString: "'"), "'TestString'")
    }
    
    func testBase64EncodeAndDecode() {
        let base64String = "TestString".base64String
        let string = String(base64String: base64String)
        XCTAssertEqual(string, "TestString")
    }
}
