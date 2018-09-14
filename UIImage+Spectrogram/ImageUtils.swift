import UIKit
import CoreGraphics
import CoreImage

public class ImageUtils {
    
    public static func drawSpectrogram(magnitudes:[[Float]], sampleRate:Float, width:Int, height:Int) -> UIImage? {
        
        let image = ImageUtils.drawMagnitudes(magnitudes: magnitudes, width: width, height: height-60)
        let fftSize = magnitudes.first!.count
        let bandDuration = (1/(sampleRate/Float(fftSize)))
        let numberOfBand = magnitudes.count
        
        let allTimeSteps = (0..<numberOfBand).map{ Float($0)*bandDuration }
        
        let text = ""
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: width, height: height))
        let img = renderer.image { ctx in
            
            image?.draw(in: CGRect(x: 0, y: 0, width: width, height: height-60))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            let attrs = [NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Thin", size: 8)!, NSAttributedStringKey.paragraphStyle: paragraphStyle,NSAttributedStringKey.foregroundColor:UIColor.black]
            
            let step = numberOfBand/16
            let offset = width/16
            
            for i in 0..<16 {
                let string = "\(allTimeSteps[i*step])"
                string.draw(with: CGRect(x: i*offset, y: height-55, width: offset, height: 30), options: .usesLineFragmentOrigin, attributes: attrs, context: nil)
            }
            
        }
        
        return img
    }
    
    // Magnitudes are normalized [0;1]
    public static func drawMagnitudes(magnitudes:[[Float]], width:Int? = nil, height:Int? = nil) -> UIImage? {
        
        let timeWidth = magnitudes.count
        let frequencyHeight = magnitudes.first!.count
        
        let pixels = magnitudes.map{ $0.map{ RGBA<Float>(gray: 1-$0) } }
        
        let flattenedPixels = pixels.flatMap{ $0 }
        
        var image = Image<RGBA<Float>>(width: frequencyHeight, height:timeWidth , pixels: flattenedPixels)
        image = image.rotated(byDegrees: -90)
        
        if let w = width,
            let h = height {
            image = image.resizedTo(width: w, height: h)
        }
        
        return image.uiImage
    }
    
    public static func drawImageForMagnitudes(magsArray: [[Double]]) -> UIImage? {
        
        let imageSize = CGSize(width: magsArray.count-1, height: magsArray.first!.count)
        // Create a context of the starting image size and set it as the current one
        UIGraphicsBeginImageContext(imageSize)
        
        
        // Get the current context
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(UIColor.white.cgColor)
        context.fill(CGRect(x: 0, y: 0, width: imageSize.width, height: imageSize.height))
        
        for x in 0..<magsArray.count {
            let mags = magsArray[x]
            for y in 0..<mags.count {
                context.setFillColor(mixColor(magnitude: Float(mags[y])).cgColor)
                context.fill(CGRect(x: x, y: y, width: 1, height: 1))
            }
        }
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    public static func mixColor(magnitude: Float) -> UIColor {
        return UIColor(hue: 0.75, saturation: CGFloat(magnitude), brightness: 1.0, alpha: 1.0)
    }
}
