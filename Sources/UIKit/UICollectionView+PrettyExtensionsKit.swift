//
//  UICollectionView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 9/23/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import CoreGraphics

public extension UICollectionView {

    public func indexPathForCell(whichContains view: UIView?) -> IndexPath? {
        let convertedOriginPoint = convert(CGPoint.zero, from: view)
        return indexPathForItem(at: convertedOriginPoint)
    }

    public func deselectAll(animated: Bool = false) {
        guard let indexPaths = indexPathsForSelectedItems else {
            return
        }

        indexPaths.forEach { (indexPath) in
            deselectItem(at: indexPath, animated: animated)
        }
    }
}
