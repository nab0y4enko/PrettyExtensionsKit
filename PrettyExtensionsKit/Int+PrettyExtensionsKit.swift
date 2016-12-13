//
//  Int+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/11/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

public extension Int {
    
    public static func random(_ range: ClosedRange<Int> = 0...Int.max) -> Int {
        let negativeOffset = range.lowerBound < 0 ? abs(range.lowerBound) : 0
        
        let positiveLowerBound = UInt32(range.lowerBound + negativeOffset)
        let positiveUpperBound = UInt32(range.upperBound + negativeOffset)
        
        return Int(positiveLowerBound + arc4random_uniform(positiveUpperBound - positiveLowerBound)) - negativeOffset
    }
}
