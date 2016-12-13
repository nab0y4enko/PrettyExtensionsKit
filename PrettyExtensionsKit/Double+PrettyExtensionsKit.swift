//
//  Double+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/11/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

public extension Double {
    
    ///Generate random double between 0 and 1
    public static func random() -> Double {
        let upperBound = UInt32.max
        let doubleUpperBound = Double(upperBound)
        let doubleRandom = Double(arc4random_uniform(upperBound))
        return doubleRandom / doubleUpperBound
    }
}
