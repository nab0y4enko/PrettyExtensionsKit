//
//  UIColor+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/18/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit

extension UIColor {
    
    public static var random: UIColor {
        return UIColor(red: CGFloat.randomFractional(), green: CGFloat.randomFractional(), blue: CGFloat.randomFractional(), alpha: 1)
    }
}
