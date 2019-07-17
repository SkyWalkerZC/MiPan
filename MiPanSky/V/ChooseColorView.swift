//
//  ChooseColorView.swift
//  MiPanSky
//
//  Created by 风中追风 on 2019/7/17.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

typealias ColorChooseCallBack = (UIColor) -> Void

class ChooseColorView: UIView {
    
    var colorCallBack:ColorChooseCallBack?
    
    static func chooseColorWithCallBack(frame:CGRect, superView:UIView, callBack:@escaping ColorChooseCallBack) -> ChooseColorView {
        let chooseColorView:ChooseColorView = ChooseColorView(frame: frame)
        chooseColorView.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        chooseColorView.colorCallBack = callBack
        superView.addSubview(chooseColorView)
        return chooseColorView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createView()
    }
    
    func createView() {
        for _ in 0...144 {
            let btn = UIButton(type: .custom)
            btn.backgroundColor = UIColor.blue
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.colorCallBack!(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
    }

}
