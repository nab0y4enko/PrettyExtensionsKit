//
//  URL+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 10/10/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import Foundation

public extension URL {

    public var prettyTrimmedQuery: URL? {
        guard let urlComponents = NSURLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return nil
        }

        urlComponents.query = nil
        return urlComponents.url
    }
}
