//
//  DoubleTestCase.swift
//  PrettyExtensionsKitTests
//
//  Created by Oleksii Naboichenko on 9/23/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
@testable import PrettyExtensionsKit

class DoubleTestCase: XCTestCase {

    func testDoubleRandom() {
        let randomValue: Double? = (0...20).random()

        XCTAssertNotNil(randomValue)
        XCTAssertGreaterThan(randomValue!, 0)
        XCTAssertLessThan(randomValue!, 20)
    }
}