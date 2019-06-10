//
//  String+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/24/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

public extension String {
    
    func prettyQuoted(withString string: String = "\"") -> String {
        return string + self + string
    }
    
    func prettyChoppedPrefix(_ count: Int = 1) -> String {
        guard count > 0 else {
            return String(self)
        }

        guard count < self.count else {
            return String()
        }

        let startIndex = index(self.startIndex, offsetBy: count)
        return String(self[startIndex...])
    }
    
    func prettyChoppedSuffix(_ count: Int = 1) -> String {
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
    
    init?(base64String: String, encoding: String.Encoding = .utf8) {
        guard let base64data = Data(base64Encoded: base64String) else {
            return nil
        }
        
        self.init(data: base64data, encoding: encoding)
    }
    
    var base64String: String {
        return Data(utf8).base64EncodedString()
    }
}

public extension String {

    func prettyContains(searchString: String, ignoreCase: Bool) -> Bool {
        let searchStringRange = range(
            of: searchString,
            options: ignoreCase ? .caseInsensitive : []
        )
        
        return searchStringRange != nil
    }
}
