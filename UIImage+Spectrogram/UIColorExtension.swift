//
//  Color.swift
//  UIImage+Spectrogram
//
//  Created by AL on 26/08/2018.
//  Copyright © 2018 Alban. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    // MARK: - UIColor+Percentage
    
    
    class func colorForProgress(progress:CGFloat) -> UIColor {
        
        var normalizedProgress = progress < 0 ?  0 : progress
        normalizedProgress = normalizedProgress > 1 ?  1 : normalizedProgress
        
        let R:CGFloat = 155.0 * normalizedProgress
        let G:CGFloat = 155.0 * (1 - normalizedProgress)
        let B:CGFloat = 0.0
        
        return UIColor(red: R / 255.0, green: G / 255.0, blue: B / 255.0, alpha: 1)
    }
    
    class func transitionColor(fromColor:UIColor, toColor:UIColor, progress:CGFloat) -> UIColor {
        
        var percentage = progress < 0 ?  0 : progress
        percentage = percentage > 1 ?  1 : percentage
        
        var fRed:CGFloat = 0
        var fBlue:CGFloat = 0
        var fGreen:CGFloat = 0
        var fAlpha:CGFloat = 0
        
        var tRed:CGFloat = 0
        var tBlue:CGFloat = 0
        var tGreen:CGFloat = 0
        var tAlpha:CGFloat = 0
        
        fromColor.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)
        toColor.getRed(&tRed, green: &tGreen, blue: &tBlue, alpha: &tAlpha)
        
        let red:CGFloat = (percentage * (tRed - fRed)) + fRed;
        let green:CGFloat = (percentage * (tGreen - fGreen)) + fGreen;
        let blue:CGFloat = (percentage * (tBlue - fBlue)) + fBlue;
        let alpha:CGFloat = (percentage * (tAlpha - fAlpha)) + fAlpha;
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
