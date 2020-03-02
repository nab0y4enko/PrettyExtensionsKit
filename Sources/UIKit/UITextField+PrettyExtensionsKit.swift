//
//  UITextField+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/26/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit

public extension UITextField {
    
    @IBInspectable var prettyPlaceholderColor: UIColor {
        get {
            if let attributedPlaceholder = attributedPlaceholder, attributedPlaceholder.length > 0 {
                var range = NSRange(location: 0, length: attributedPlaceholder.length)
                return attributedPlaceholder.attribute(NSAttributedString.Key.foregroundColor, at: 1, effectiveRange: &range) as! UIColor
            }
            
            //  Return `default` color http://stackoverflow.com/a/33033298
            return UIColor(hexString: "#C7C7CD")!
        }
        set {
            let placeholderString = placeholder ?? ""
            let attributes = [
                NSAttributedString.Key.foregroundColor: newValue
            ]
            attributedPlaceholder = NSAttributedString(string: placeholderString, attributes: attributes)
        }
    }
}
