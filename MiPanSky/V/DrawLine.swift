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
        self.backgroundColor = paperColor
    }
    
    func cleanAllDraw() {
        
    }
    
    func cleanFinallyDraw() {
        
    }
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
