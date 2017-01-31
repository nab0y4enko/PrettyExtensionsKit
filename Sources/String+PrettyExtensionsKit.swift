//
//  String+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/24/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

public extension String {
    
    public func choppedPrefix(_ count: Int = 1) -> String {
        return substring(from: characters.index(startIndex, offsetBy: count))
    }
    
    public func choppedSuffix(_ count: Int = 1) -> String {
        return substring(to: characters.index(endIndex, offsetBy: -count))
    }
}
