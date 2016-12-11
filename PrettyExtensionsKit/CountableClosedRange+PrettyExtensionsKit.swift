//
//  CountableClosedRange+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/11/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import Foundation

public extension CountableClosedRange {
    
    public var randomInt: Int? {
        guard let lowerBound = lowerBound as? Int, let upperBound = upperBound  as? Int else {
            return nil
        }
        
        return Int.random(lowerBound...upperBound)
    }
}
