//
//  UIColorTestCase.swift
//  PrettyExtensionsKitTests
//
//  Created by Oleksii Naboichenko on 1/25/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
@testable import PrettyExtensionsKit

class UIColorTestCase: XCTestCase {
    
    func testRandomColorWithHexString() {
        let color = UIColor.random
        let components = color.components
        XCTAssertNotNil(components)
    }

    func testRGBColorWithHexString() {
        let testHexString = "#FF0000"
        let color = UIColor(hexString: testHexString)
        XCTAssertNotNil(color)
        XCTAssertEqual(color!.components?.red, 1)
        XCTAssertEqual(color!.components?.green, 0)
        XCTAssertEqual(color!.components?.blue, 0)
        XCTAssertEqual(color!.hexString().lowercased(), testHexString.lowercased())
    }
    
    func testRGBAColorWithHexString() {
        let testHexString = "#FF0000FF"
        let color = UIColor(hexString: testHexString)
        XCTAssertNotNil(color)
        XCTAssertEqual(color!.components?.alpha, 1)
        XCTAssertEqual(color!.hexString(includeAlpha: true).lowercased(), testHexString.lowercased())
    }
    
    func testColorWithWrongHexString() {
        let color = UIColor(hexString: "#DDYYUUIIOOPP")
        XCTAssertNil(color?.components)
    }

    func testColorWithEmptyHexString() {
        let color = UIColor(hexString: "")
        XCTAssertNil(color?.components)
    }

}
