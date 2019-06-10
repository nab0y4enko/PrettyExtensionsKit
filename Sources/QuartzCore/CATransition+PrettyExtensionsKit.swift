//
//  CATransition+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/24/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import QuartzCore

public extension CATransition {
    
    // MARK: - Initializers
    convenience init(type: CATransitionType, subtype: CATransitionSubtype? = nil) {
        self.init()
        
        self.type = type
        self.subtype = subtype
    }
}
