//
//  CGFloatTestCase.swift
//  PrettyExtensionsKitTests
//
//  Created by Oleksii Naboichenko on 9/23/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
@testable import PrettyExtensionsKit

class CGFloatTestCase: XCTestCase {

    func cgFloatTestCase() {
        let randomValue: CGFloat? = (0...20).random()

        XCTAssertNotNil(randomValue)
        XCTAssertGreaterThan(randomValue!, 0)
        XCTAssertLessThan(randomValue!, 20)
    }
}
