//
//  DrawLineInfo.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class DrawLineInfo: NSObject {
public
    var linePoints = [CGPoint]()
    var lineColor : UIColor
    var lineWidth : CGFloat
    
    override init() {
        self.lineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.lineWidth = 1.0
        self.linePoints = []
    }
    
    
}
