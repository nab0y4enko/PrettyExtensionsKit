//
//  String+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/24/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

public extension String {
    
    public func prettyQuoted(withString string: String = "\"") -> String {
        return string + self + string
    }
    
    public func prettyChoppedPrefix(_ count: Int = 1) -> String {
        return substring(from: characters.index(startIndex, offsetBy: count))
    }
    
    public func prettyChoppedSuffix(_ count: Int = 1) -> String {
        return substring(to: characters.index(endIndex, offsetBy: -count))
    }
}

public extension String {
    
    public init?(base64: String) {
        guard let base64data = Data(base64Encoded: base64) else {
            return nil
        }
        
        self.init(data: base64data, encoding: .utf8)
    }
    
    public var base64String: String {
        return Data(utf8).base64EncodedString()
    }
}
