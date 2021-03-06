//
//  UICollectionView+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 9/23/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import UIKit
import CoreGraphics

public extension UICollectionView {

    func indexPathForCell(whichContainsSubview subview: UIView?) -> IndexPath? {
        let convertedOriginPoint = convert(CGPoint.zero, from: subview)
        return indexPathForItem(at: convertedOriginPoint)
    }

    func deselectAll(animated: Bool = false) {
        indexPathsForSelectedItems?.forEach {
            deselectItem(at: $0, animated: animated)
        }
    }
}
