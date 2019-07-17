//
//  LeftAndRightDrawLine.swift
//  MiPanSky
//
//  Created by 风中追风 on 2019/3/25.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class LeftAndRightDrawLine: DrawLine {


    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context:CGContext = UIGraphicsGetCurrentContext()!
        context.setLineCap(CGLineCap.round)
        context.setLineJoin(CGLineJoin.round)
        
        let width = self.frame.width
        //
        
        if allLineInfos.count > 0 {
            for index in 0...allLineInfos.count - 1 {
                let line:DrawLineInfo = allLineInfos[index]
                
            }
        }
    }

}
