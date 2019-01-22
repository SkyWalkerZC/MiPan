//
//  FreedomDrawLine.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class FreedomDrawLine: DrawLine {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = self.anyTouchInTouchSet(touches: touches)
        drawTouchesBegin(width:currentPaintWidth, color: currentPaintColor, beginPoint: touch.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let moveTouch = self.anyTouchInTouchSet(touches: touches)
        drawTouchesMovedWithPoint(movePoint: moveTouch.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    private func drawTouchesBegin(width:CGFloat, color:UIColor, beginPoint:CGPoint) {
        let line = DrawLineInfo()
        line.lineWidth = width
        line.lineColor = color
        line.linePoints.append(beginPoint)
        allLineInfos.append(line)
    }
    
    private func drawTouchesMovedWithPoint(movePoint:CGPoint) {
        let lastLine = allLineInfos.last
        lastLine?.linePoints.append(movePoint)
    }

}
