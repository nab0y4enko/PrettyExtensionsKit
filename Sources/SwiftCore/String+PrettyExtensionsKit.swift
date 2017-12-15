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
        guard count > 0 else {
            return String(self)
        }

        guard count < self.count else {
            return String()
        }

        let startIndex = index(self.startIndex, offsetBy: count)
        return String(self[startIndex...])
    }
    
    public func prettyChoppedSuffix(_ count: Int = 1) -> String {
        guard count > 0 else {
            return String(self)
        }

        guard count < self.count else {
            return String()
        }

        let endIndex = index(self.endIndex, offsetBy: -count)
        return String(self[..<endIndex])
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

public extension String {

    func prettyContains(_ substring: String) -> Bool {
        return self.range(of: substring) != nil
    }

    func prettyContainsIgnoringCase(_ substring: String) -> Bool {
        return self.range(of: substring, options: .caseInsensitive) != nil
    }
}
