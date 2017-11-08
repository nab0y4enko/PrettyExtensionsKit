//
//  UIAlertController+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 1/3/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

public extension UIAlertController {
    
    // MARK: - Private Properties
    static var defaultAlertTitle: String {
        let bundleName = Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String
        return bundleName ?? "Ooops!"
    }
    
    // MARK: - Initializers
    public convenience init(alertTitle title: String? = defaultAlertTitle, error: Error?) {
        self.init(title: title, message: error?.localizedDescription, preferredStyle: .alert)
    }

    public convenience init(alertTitle title: String? = defaultAlertTitle, message: String?) {
        self.init(title: title, message: message, preferredStyle: .alert)
    }
}
