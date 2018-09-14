//
//  ImageExtension.swift
//  ImageDatasGetter
//
//  Created by alban perli on 22.02.17.
//  Copyright © 2017 alban perli. All rights reserved.
//

import UIKit
import CoreImage

// MARK: - Image Scaling.
extension UIImage {
    
    class func processPixels(in image: UIImage) -> UIImage? {
        guard let inputCGImage = image.cgImage else {
            print("unable to get cgImage")
            return nil
        }
        let colorSpace       = CGColorSpaceCreateDeviceRGB()
        let width            = inputCGImage.width
        let height           = inputCGImage.height
        let bytesPerPixel    = 4
        let bitsPerComponent = 8
        let bytesPerRow      = bytesPerPixel * width
        let bitmapInfo       = RGBA32.bitmapInfo
        
        guard let context = CGContext(data: nil, width: width, height: height, bitsPerComponent: bitsPerComponent, bytesPerRow: bytesPerRow, space: colorSpace, bitmapInfo: bitmapInfo) else {
            print("unable to create context")
            return nil
        }
        context.draw(inputCGImage, in: CGRect(x: 0, y: 0, width: width, height: height))
        
        guard let buffer = context.data else {
            print("unable to get context data")
            return nil
        }
        
        let pixelBuffer = buffer.bindMemory(to: RGBA32.self, capacity: width * height)
        
        for row in 0 ..< Int(height) {
            for column in 0 ..< Int(width) {
                let offset = row * width + column
                if pixelBuffer[offset] == .black {
                    pixelBuffer[offset] = .transparent
                }
            }
        }
        
        let outputCGImage = context.makeImage()!
        let outputImage = UIImage(cgImage: outputCGImage, scale: image.scale, orientation: image.imageOrientation)
        
        return outputImage
    }
    
    struct RGBA32: Equatable {
        private var color: UInt32
        
        var redComponent: UInt8 {
            return UInt8((color >> 24) & 255)
        }
        
        var greenComponent: UInt8 {
            return UInt8((color >> 16) & 255)
        }
        
        var blueComponent: UInt8 {
            return UInt8((color >> 8) & 255)
        }
        
        var alphaComponent: UInt8 {
            return UInt8((color >> 0) & 255)
        }
        
        init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
            color = (UInt32(red) << 24) | (UInt32(green) << 16) | (UInt32(blue) << 8) | (UInt32(alpha) << 0)
        }
        
        static let red     = RGBA32(red: 255, green: 0,   blue: 0,   alpha: 255)
        static let green   = RGBA32(red: 0,   green: 255, blue: 0,   alpha: 255)
        static let blue    = RGBA32(red: 0,   green: 0,   blue: 255, alpha: 255)
        static let white   = RGBA32(red: 255, green: 255, blue: 255, alpha: 255)
        static let black   = RGBA32(red: 0,   green: 0,   blue: 0,   alpha: 255)
        static let magenta = RGBA32(red: 255, green: 0,   blue: 255, alpha: 255)
        static let yellow  = RGBA32(red: 255, green: 255, blue: 0,   alpha: 255)
        static let cyan    = RGBA32(red: 0,   green: 255, blue: 255, alpha: 255)
        static let transparent    = RGBA32(red: 0,   green: 255, blue: 255, alpha: 0)
        
        static let bitmapInfo = CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Little.rawValue
        
        static func ==(lhs: RGBA32, rhs: RGBA32) -> Bool {
            return lhs.color == rhs.color
        }
    }
    
    func pixel(in image: UIImage, at point: CGPoint) -> (UInt8, UInt8, UInt8, UInt8)? {
        let width = Int(image.size.width)
        let height = Int(image.size.height)
        let x = Int(point.x)
        let y = Int(point.y)
        guard x < width && y < height else {
            return nil
        }
        guard let cfData:CFData = image.cgImage?.dataProvider?.data, let pointer = CFDataGetBytePtr(cfData) else {
            return nil
        }
        let bytesPerPixel = 4
        let offset = (x + y * width) * bytesPerPixel
        return (pointer[offset], pointer[offset + 1], pointer[offset + 2], pointer[offset + 3])
    }
    
    // Retreive intensity (alpha) of each pixel from this image
    func pixelsArray()->(pixelValues: [Float], width: Int, height: Int){

        let width = Int(self.size.width)
        let height = Int(self.size.height)
        var pixelsArray = [Float]()
        
        for i in 0..<height {
            for j in 0..<width {
                
                if let rValue = pixel(in: self, at: CGPoint(x:i,y:j))?.3{
                    let floatRValue = Float(rValue)
                    pixelsArray.append(Float(floatRValue/255.0))
                }
                
            }
        }
    
        return (pixelsArray,width,height)
    }
    
    
    func toGray() -> UIImage {
        let context = CIContext(options: nil)
        
        let currentFilter = CIFilter(name: "CIPhotoEffectNoir")
        currentFilter?.setValue(CIImage(image:self), forKey: kCIInputImageKey)
        let output = currentFilter?.outputImage
        let cgImg = context.createCGImage(output!, from: (output?.extent)!)
        let processedImage = UIImage(cgImage: cgImg!)
        return processedImage
    }
    
    
    public func grayscaled() -> UIImage? {
        guard let cgImage = cgImage else { return nil }
        let colorSpace = CGColorSpaceCreateDeviceGray()
        let (width, height) = (Int(size.width), Int(size.height))
        
        // Build context: one byte per pixel, no alpha
        guard let context = CGContext(data: nil, width: width,
                                      height: height, bitsPerComponent: 8,
                                      bytesPerRow: width, space: colorSpace,
                                      bitmapInfo: CGImageAlphaInfo.none.rawValue)
            else { return nil }
        
        // Draw to context
        let destination = CGRect(origin: .zero, size: size)
        context.draw(cgImage, in: destination)
        
        // Return the grayscale image
        guard let imageRef = context.makeImage()
            else { return nil }
        return UIImage(cgImage: imageRef)
    }
    

    
    func toSize(newSize: CGSize) -> UIImage {
        // Guard newSize is different
        guard self.size != newSize else { return self }
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0);
        self.draw(in: CGRect(x:0, y:0, width:newSize.width, height:newSize.height))
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImage
    }
    
    // Extract sub image based on the given frame
    // x,y top left | x,y bottom right | pixels margin above this frame
    func extractFrame( topLeft: CGPoint, bottomRight: CGPoint, pixelMargin: CGFloat) -> UIImage {
        
        var topLeft = topLeft
        var bottomRight = bottomRight
        topLeft.x = topLeft.x - pixelMargin
        topLeft.y = topLeft.y - pixelMargin
        bottomRight.x = bottomRight.x + pixelMargin
        bottomRight.y = bottomRight.y + pixelMargin
        
        let size:CGSize = CGSize(width:bottomRight.x-topLeft.x, height:bottomRight.y-topLeft.y)
        let rect = CGRect(x:-topLeft.x, y:-topLeft.y, width:self.size.width, height:self.size.height)
        UIGraphicsBeginImageContext(size)
        
        self.draw(in: rect)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
        
    }
    
    /// Represents a scaling mode
    enum ScalingMode {
        case aspectFill
        case aspectFit
        
        /// Calculates the aspect ratio between two sizes
        ///
        /// - parameters:
        ///     - size:      the first size used to calculate the ratio
        ///     - otherSize: the second size used to calculate the ratio
        ///
        /// - return: the aspect ratio between the two sizes
        func aspectRatio(between size: CGSize, and otherSize: CGSize) -> CGFloat {
            let aspectWidth  = size.width/otherSize.width
            let aspectHeight = size.height/otherSize.height
            
            switch self {
            case .aspectFill:
                return max(aspectWidth, aspectHeight)
            case .aspectFit:
                return min(aspectWidth, aspectHeight)
            }
        }
    }
    
    /// Scales an image to fit within a bounds with a size governed by the passed size. Also keeps the aspect ratio.
    ///
    /// - parameter:
    ///     - newSize:     the size of the bounds the image must fit within.
    ///     - scalingMode: the desired scaling mode
    ///
    /// - returns: a new scaled image.
    func scaled(to newSize: CGSize, scalingMode: UIImage.ScalingMode = .aspectFill) -> UIImage {
        
        let aspectRatio = scalingMode.aspectRatio(between: newSize, and: size)
        
        /* Build the rectangle representing the area to be drawn */
        var scaledImageRect = CGRect.zero
        
        scaledImageRect.size.width  = size.width * aspectRatio
        scaledImageRect.size.height = size.height * aspectRatio
        scaledImageRect.origin.x    = (newSize.width - size.width * aspectRatio) / 2.0
        scaledImageRect.origin.y    = (newSize.height - size.height * aspectRatio) / 2.0
        
        /* Draw and retrieve the scaled image */
        UIGraphicsBeginImageContext(newSize)
        
        draw(in: scaledImageRect)
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return scaledImage!
    }
}
