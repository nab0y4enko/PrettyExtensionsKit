//
//  UIBarButtonItemTestCase.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 2/7/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
@testable import PrettyExtensionsKit

class UIBarButtonItemTestCase: XCTestCase {

    func testHideBarButtonItem() {
        let barButtonItem = UIBarButtonItem()
        XCTAssertNil(barButtonItem.tintColor)
        XCTAssertTrue(barButtonItem.isEnabled)

        barButtonItem.isHidden = true
        XCTAssertNotNil(barButtonItem.tintColor)
        XCTAssertEqual(barButtonItem.tintColor, UIColor.clear)
        XCTAssertFalse(barButtonItem.isEnabled)
        
        barButtonItem.isHidden = false
        XCTAssertNil(barButtonItem.tintColor)
        XCTAssertTrue(barButtonItem.isEnabled)
    }
}
