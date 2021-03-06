//
//  UIControl+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/10/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit

public extension UIControl {
    
    ///Remove all targets/actions for a set of events.
    func removeAllTargetsAndActions(controlEvents: UIControl.Event = .allEvents) {
        removeTarget(nil, action: nil, for: controlEvents)
    }
}
