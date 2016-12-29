//
//  UIImage+PrettyExtensionsKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 12/29/16.
//  Copyright © 2016 Oleksii Naboichenko. All rights reserved.
//

import UIKit

public extension UIImage {
    
    public convenience init?(withColor color: UIColor?, size: CGSize = CGSize(width: 1, height: 1)) {
        guard let color = color, size.width > 0, size.height > 0 else {
            return nil
        }
        
        UIGraphicsBeginImageContext(size)
        defer {
            UIGraphicsEndImageContext()
        }
        
        if let context = UIGraphicsGetCurrentContext() {
            let imageRect = CGRect(origin: CGPoint(), size: size)
            context.setFillColor(color.cgColor)
            context.fill(imageRect)
        }
        
        guard let cgImage = UIGraphicsGetImageFromCurrentImageContext()?.cgImage else {
            return nil
        }
        
        self.init(cgImage: cgImage)
    }
}
