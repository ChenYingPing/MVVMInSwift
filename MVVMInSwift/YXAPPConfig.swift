//
//  YXAPPConfig.swift
//  SwiftPerfectDoc
//
//  Created by Chen on 16/3/10.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit


// MARK: - 字体
func SystemFont (font: CGFloat) -> UIFont {
    return UIFont.systemFontOfSize(font)
}

func SystemBordFont (font: CGFloat) -> UIFont {
    return UIFont.boldSystemFontOfSize(font)
}


func AutoChangeSize(var number: CGFloat) -> CGFloat {
    number = number * UIScreen.mainScreen().bounds.size.width / 375.0
    return number
}


let BlackText333Color: String = "#333333"
let BlackText666Color: String = "#666666"
let BlackText999Color: String = "#999999"
let CellLineViewColor: String = "#d7d7d7"



