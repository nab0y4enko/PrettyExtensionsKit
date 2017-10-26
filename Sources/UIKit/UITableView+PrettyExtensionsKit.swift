//
//  UITableView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/10/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import CoreGraphics

public extension UITableView {

    public func indexPathForCell(whichContains view: UIView?) -> IndexPath? {
        let convertedOriginPoint = convert(CGPoint.zero, from: view)
        return indexPathForRow(at: convertedOriginPoint)
    }

    public func deselectAll(animated: Bool = false) {
        guard let indexPaths = indexPathsForSelectedRows else {
            return
        }

        indexPaths.forEach { (indexPath) in
            deselectRow(at: indexPath, animated: animated)
        }
    }
}
