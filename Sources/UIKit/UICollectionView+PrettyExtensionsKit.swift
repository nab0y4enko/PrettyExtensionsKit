//
//  UICollectionView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 9/23/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import CoreGraphics

public extension UICollectionView {

    public func indexPathForCell(whichContainsSubview subview: UIView?) -> IndexPath? {
        let convertedOriginPoint = convert(CGPoint.zero, from: subview)
        return indexPathForItem(at: convertedOriginPoint)
    }

    public func deselectAll(animated: Bool = false) {
        indexPathsForSelectedItems?.forEach {
            deselectItem(at: $0, animated: animated)
        }
    }
}
