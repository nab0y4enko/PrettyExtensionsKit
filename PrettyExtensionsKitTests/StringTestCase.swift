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
    
    func testChopPrefix() {
        let choppedString = testString.choppedPrefix(6)
        XCTAssertEqual(choppedString, "ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    }
    
    func testChopSuffix() {
        let choppedString = testString.choppedSuffix(67)
        XCTAssertEqual(choppedString, "Lorem ipsum dolor sit amet, consectetur adipiscing elit")
    }
}
