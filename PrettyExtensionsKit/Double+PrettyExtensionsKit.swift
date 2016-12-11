//
//  Double+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/11/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import Foundation

public extension Double {
    
    ///Generate random double between 0 and 1
    public static func random() -> Float {
        let upperBound = UInt32.max
        let doubleUpperBound = Float(upperBound)
        let doubleRandom = Float(arc4random_uniform(upperBound))
        return doubleRandom / doubleUpperBound
    }
}
