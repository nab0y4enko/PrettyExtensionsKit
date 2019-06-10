//
//  UIView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/10/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit
public extension UIView {
    
    var isHiddenAndInteractionDisabled: Bool {
        get {
            return isHidden && !isUserInteractionEnabled
        }
        set {
            isHidden = newValue
            isUserInteractionEnabled = !newValue
        }
    }
}
