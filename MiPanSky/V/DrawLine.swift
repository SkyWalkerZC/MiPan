//
//  DrawLine.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class DrawLine: UIView {
    
    // 画布基类
    
    var allLineInfos = [DrawLineInfo]()  // 画出来的所有的线合集
    var currentPaintColor : UIColor      // 当前划线颜色
    var currentPaintWidth : CGFloat      // 当前划线粗细
    var paperColor : UIColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)        // 画布颜色
    
    override init(frame: CGRect) {
        currentPaintColor = UIColor.black
        currentPaintWidth = 7.0
        super.init(frame: frame)
        self.backgroundColor = paperColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        currentPaintColor = UIColor.black
        currentPaintWidth = 7.0
        super.init(coder: aDecoder)
        backgroundColor = paperColor
    }
    
    func cleanAllDraw() {
        if allLineInfos.count > 0 {
            allLineInfos.removeAll()
            setNeedsDisplay()
        }
    }
    
    func cleanFinallyDraw() {
        if allLineInfos.count > 0 {
            allLineInfos.removeLast()
            setNeedsDisplay()
        }
    }
    
    // TODO：存储划线点位
    func anyTouchInTouchSet(touches:Set<UITouch>) -> UITouch {
        if touches.count > 0 {
            for touch in touches {
                return touch;
            }
        }
        assert(false, "集合不能为空啊")
        return UITouch.init()
    }
    
    func drawTouchesBegin(width:CGFloat, color:UIColor, beginPoint:CGPoint) {
        let line = DrawLineInfo()
        line.lineWidth = width
        line.lineColor = color
        line.linePoints.append(beginPoint)
        allLineInfos.append(line)
    }
    
    func drawTouchesMovedWithPoint(movePoint:CGPoint) {
        let lastLine = allLineInfos.last
        lastLine?.linePoints.append(movePoint)
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
