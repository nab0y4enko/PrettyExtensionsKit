//
//  UIView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/10/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit

public extension UIView {
    
    public var prettyCornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    public var prettyBorderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    public var prettyBorderColor: UIColor {
        get {
            if let borderColor = layer.borderColor {
                return UIColor(cgColor: borderColor)
            }
            return UIColor.clear
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}

public extension UIView {
    
    public var isHiddenAndInteractionDisabled: Bool {
        get {
            return isHidden && !isUserInteractionEnabled
        }
        set {
            isHidden = newValue
            isUserInteractionEnabled = !newValue
        }
    }
}
