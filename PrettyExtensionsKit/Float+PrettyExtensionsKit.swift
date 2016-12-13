//
//  Float+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/11/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

public extension Float {
    
    ///Generate random float between 0 and 1
    public static func random() -> Float {
        let upperBound = UInt32.max
        let floatUpperBound = Float(upperBound)
        let floatRandom = Float(arc4random_uniform(upperBound))
        return floatRandom / floatUpperBound
    }
}
