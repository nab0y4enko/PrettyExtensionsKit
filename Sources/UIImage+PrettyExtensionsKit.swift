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

public extension UIImage {
    
    public func prettySquared() -> UIImage? {
        guard let cgImage = cgImage else {
            return nil
        }
        
        guard cgImage.width != cgImage.height else {
            return copy() as? UIImage
        }
        
        let imageSize = CGSize(width: cgImage.width, height: cgImage.height)

        //Calculate crop rect
        var x: CGFloat = 0
        var y: CGFloat = 0
        var lowerSideSize: CGFloat = 0
        
        if imageSize.width > imageSize.height {
            //Landscape
            x = (imageSize.width - imageSize.height) / 2.0
            lowerSideSize = imageSize.height
        } else if imageSize.width < imageSize.height {
            //Portrate
            y = (imageSize.height - imageSize.width) / 2.0
            lowerSideSize = imageSize.width
        }
        
        let cropRect = CGRect(x: x, y: y, width: lowerSideSize, height: lowerSideSize)
        
        //Crop image
        guard let croppedCGImage = cgImage.cropping(to: cropRect) else {
            return nil
        }
        
        //Create UIImage with cropped cgImage
        return UIImage(cgImage: croppedCGImage, scale: scale, orientation: imageOrientation)
    }
    
    public func prettyResized(to targetSize: CGSize, maintainAspectRatio: Bool = false) -> UIImage? {
        guard targetSize.width > 0, targetSize.height > 0, size.width > 0, size.height > 0 else {
            return nil
        }
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newImageSize: CGSize = targetSize
        var newImageRect: CGRect = CGRect(x: 0, y: 0, width: targetSize.width, height: targetSize.height)
        
        if maintainAspectRatio {
            // Calculate scale factor
            let widthScaleRatio = targetSize.width / size.width
            let heightScaleRatio = targetSize.height / size.height
            
            if widthScaleRatio > heightScaleRatio {
                newImageSize = CGSize(width: size.width * heightScaleRatio, height: size.height * heightScaleRatio)
            } else {
                newImageSize = CGSize(width: size.width * widthScaleRatio, height: size.height * widthScaleRatio)
            }
            
            // This is the rect that we've calculated out and this is what is actually used below
            newImageRect = CGRect(x: 0, y: 0, width: newImageSize.width, height: newImageSize.height)
        }
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newImageSize, false, 1)
        draw(in: newImageRect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
}

public extension UIImage {

    public func prettyMaskWithColor(color: UIColor) -> UIImage? {
        guard let maskImage = cgImage else {
            return nil
        }
        
        let width = maskImage.width
        let height = maskImage.height
        let bounds = CGRect(x: 0, y: 0, width: width, height: height)
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue)
        
        guard let context = CGContext(data: nil, width: width, height: height, bitsPerComponent: 8, bytesPerRow: 0, space: colorSpace, bitmapInfo: bitmapInfo.rawValue) else {
            return nil
        }
        
        context.clip(to: bounds, mask: maskImage)
        context.setFillColor(color.cgColor)
        context.fill(bounds)
        
        guard let cgImage = context.makeImage() else {
            return nil
        }
        
        return UIImage(cgImage: cgImage, scale: scale, orientation: imageOrientation)
    }
}
