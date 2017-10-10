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
        let components = color.prettyColorComponents
        XCTAssertNotNil(components)
    }

    func testRGBColorWithHexString() {
        let testHexString = "#FF0000"
        let color = UIColor(hexString: testHexString)
        XCTAssertNotNil(color)
        XCTAssertEqual(color!.prettyColorComponents.red, 1)
        XCTAssertEqual(color!.prettyColorComponents.green, 0)
        XCTAssertEqual(color!.prettyColorComponents.blue, 0)
        XCTAssertEqual(color!.hexString().lowercased(), testHexString.lowercased())
    }
    
    func testRGBAColorWithHexString() {
        let testHexString = "#FF0000FF"
        let color = UIColor(hexString: testHexString)
        XCTAssertNotNil(color)
        XCTAssertEqual(color!.prettyColorComponents.alpha, 1)
        XCTAssertEqual(color!.hexString(includeAlpha: true).lowercased(), testHexString.lowercased())
    }
    
    func testColorWithWrongHexString() {
        let color = UIColor(hexString: "#DDYYUUIIOOPP")
        XCTAssertNil(color?.prettyColorComponents)
    }

    func testColorWithEmptyHexString() {
        let color = UIColor(hexString: "")
        XCTAssertNil(color?.prettyColorComponents)
    }
}
