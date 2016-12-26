//
//  UITextField+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/26/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import Foundation

extension UITextField {
    
    @IBInspectable var placeholderColor: UIColor? {
        get {
            return self.placeholderColor
        }
        set {
            guard let placeholderColor = newValue else {
                return
            }
            let placeholderString = self.placeholder ?? ""
            attributedPlaceholder = NSAttributedString(string: placeholderString, attributes: [NSForegroundColorAttributeName: placeholderColor])
        }
    }
}
