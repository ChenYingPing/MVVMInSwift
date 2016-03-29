//
//  UIColor+Extension.swift
//  SwiftPerfectDoc
//
//  Created by Chen on 16/2/22.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit

extension UIColor {
    // 16进制转换颜色
    class func rgbColorWithHexString (hex:String) -> UIColor {
        return UIColor.rgbColorWithHexStringAndAlpha(hex, alpha: 1)
    }
    
    class func rgbColorWithHexStringAndAlpha(hex:String, alpha: CGFloat) -> UIColor {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))
        }
        
        if (cString.characters.count != 6) {
            return UIColor.grayColor()
        }
        
        let rString = cString.substringToIndex(cString.startIndex.advancedBy(2))
        let gString = cString.substringFromIndex(cString.startIndex.advancedBy(2)).substringToIndex(cString.startIndex.advancedBy(2))
        let bString = cString.substringFromIndex(cString.startIndex.advancedBy(4)).substringToIndex(cString.startIndex.advancedBy(2))
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        
        return UIColor(red: CGFloat(Double(r) / 255.0), green:CGFloat(Double(g) / 255.0), blue:CGFloat(Double(b) / 255.0), alpha: alpha)
    }
}
