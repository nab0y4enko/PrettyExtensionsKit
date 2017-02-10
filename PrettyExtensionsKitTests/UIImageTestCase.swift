//
//  UIImageTestCase.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 2/10/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
import UIKit
@testable import PrettyExtensionsKit

class UIImageTestCase: XCTestCase {
    
    func testCreateImageWithColor() {
        let image = UIImage(withColor: UIColor.red)
        XCTAssertNotNil(image)
    }
    
    func testResizeImage() {
        let image = UIImage(withColor: UIColor.red, size: CGSize(width: 200, height: 400))
        XCTAssertNotNil(image)
        
        let resizedImage = image?.prettyResized(to: CGSize(width: 100, height: 350))
        XCTAssertNotNil(resizedImage)
        XCTAssertEqual(resizedImage?.size, CGSize(width: 100, height: 350))
    }
    
    func testResizeImageWithMaintainAspectRatio() {
        let image = UIImage(withColor: UIColor.red, size: CGSize(width: 200, height: 400))
        XCTAssertNotNil(image)
        
        let resizedImage = image?.prettyResized(to: CGSize(width: 100, height: 350), maintainAspectRatio: true)
        XCTAssertNotNil(resizedImage)
        XCTAssertEqual(resizedImage?.size, CGSize(width: 100, height: 200))
    }
    
    func testSquareImage() {
        let image = UIImage(withColor: UIColor.red, size: CGSize(width: 200, height: 400))
        XCTAssertNotNil(image)

        let squaredImage = image?.prettySquared()
        XCTAssertNotNil(squaredImage)
        XCTAssertEqual(squaredImage!.size, CGSize(width: 200, height: 200))
    }
}
