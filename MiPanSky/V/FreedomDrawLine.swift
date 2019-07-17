//
//  FreedomDrawLine.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class FreedomDrawLine: DrawLine {

    override func draw(_ rect: CGRect) {
        let context:CGContext = UIGraphicsGetCurrentContext()!
        context.setLineCap(CGLineCap.round)
        context.setLineJoin(CGLineJoin.round)
        
        
        if allLineInfos.count > 0 {
            // 循环取出画的每一条线
            for index in 0...allLineInfos.count-1 {
                let line:DrawLineInfo = allLineInfos[index]
                context.beginPath()
                let startPoint = line.linePoints[0]
                context.move(to: startPoint)
                
                // 线上的每一点
                if line.linePoints.count > 1 {
                    for index in 1...line.linePoints.count-1 {
                        let endPoint = line.linePoints[index]
                        context.addLine(to: endPoint)
                    }
                } else {
                    context.addLine(to: startPoint)
                }
                
                context.setStrokeColor(line.lineColor.cgColor)
                context.setLineWidth(line.lineWidth + 1)
                context.strokePath()
            }
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = self.anyTouchInTouchSet(touches: touches)
        self.drawTouchesBegin(width:currentPaintWidth, color: currentPaintColor, beginPoint: touch.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let moveTouch = self.anyTouchInTouchSet(touches: touches)
        self.drawTouchesMovedWithPoint(movePoint: moveTouch.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    


}
