//
//  UIIButton+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/29/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func setBackgroundImage(withColor color: UIColor?, for state: UIControl.State) {
        setBackgroundImage(UIImage(withColor: color), for: state)
    }
}
