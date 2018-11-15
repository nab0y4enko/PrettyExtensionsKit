//
//  UITableView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/10/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import CoreGraphics

public extension UITableView {

    public func indexPathForCell(whichContainsSubview subview: UIView?) -> IndexPath? {
        let convertedOriginPoint = convert(CGPoint.zero, from: subview)
        return indexPathForRow(at: convertedOriginPoint)
    }

    public func deselectAll(animated: Bool = false) {
        indexPathsForSelectedRows?.forEach {
            deselectRow(at: $0, animated: animated)
        }

        //Dissmiss row actions
        let previousEditingValue = isEditing
        setEditing(false, animated: animated)
        isEditing = previousEditingValue
    }
}
