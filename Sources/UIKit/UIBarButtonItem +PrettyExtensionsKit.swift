//
//  UIBarButtonItem +PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 2/7/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import UIKit

public extension UIBarButtonItem {
    
    public var isPrettyHidden: Bool {
        get {
            return !isEnabled && tintColor == .clear
        }
        set {
            tintColor = newValue ? .clear : nil
            isEnabled = !newValue
        }
    }
}
