//
//  URL+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 10/10/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import Foundation

public extension URL {

    
    /// Returned trimmed url
    /// Example:
    /// http://www.example.com/folder/page.htm?param1=value1&param2=value2 => http://www.example.com/folder/page.htm
    public var prettyTrimmedQuery: URL? {
        guard let urlComponents = NSURLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return nil
        }

        urlComponents.query = nil
        return urlComponents.url
    }
}
