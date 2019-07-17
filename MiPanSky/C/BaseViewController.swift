//
//  BaseViewController.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    /*
     画布视图的基类 VC
     */
    
    var colorBtn:UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        let backBtn = UIButton(type: .custom)
        self.view.addSubview(backBtn)
        backBtn.frame = CGRect(x: 10, y: 40, width: 50, height: 20)
        backBtn.setTitle("Back", for: UIControl.State.normal)
        backBtn.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControl.State.normal)
        backBtn.addTarget(self, action: #selector(back), for: UIControl.Event.touchUpInside)
        
        // TODO: 底部编辑，撤销，清空，颜色粗细选择等
        let cleanLastBtn = UIButton(type: .custom)
        view.addSubview(cleanLastBtn)
        cleanLastBtn.frame = CGRect(x: 10, y: kScreenHeight - 30, width: 40, height: 20)
        cleanLastBtn.setTitle("撤销", for: UIControl.State.normal)
        cleanLastBtn.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControl.State.normal)
        cleanLastBtn.addTarget(self, action: #selector(revocation), for: UIControl.Event.touchUpInside)
        
        let cleanAllBtn = UIButton(type: .custom)
        view.addSubview(cleanAllBtn)
        cleanAllBtn.frame = CGRect(x: 60, y: kScreenHeight - 30, width: 40, height: 20)
        cleanAllBtn.setTitle("清除", for: UIControl.State.normal)
        cleanAllBtn.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControl.State.normal)
        cleanAllBtn.addTarget(self, action: #selector(cleanAll), for: UIControl.Event.touchUpInside)
        
        colorBtn = UIButton(type: .custom)
        view.addSubview(colorBtn!)
        colorBtn?.frame = CGRect(x: 110, y: kScreenHeight - 30, width: 20, height: 20)
        colorBtn?.backgroundColor = UIColor.black
        colorBtn?.layer.cornerRadius = 4
        colorBtn?.addTarget(self, action: #selector(selectColor), for: UIControl.Event.touchUpInside)
        
    }

    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func revocation() {
        // 撤销上一笔
    }
    
    @objc func cleanAll() {
        // 清空画板
    }
    
    @objc func selectColor() {
        // 选择颜色 View
        let frame = CGRect(x: 20, y: 20, width: kScreenWidth - 40, height: 300)
        _ = ChooseColorView.chooseColorWithCallBack(frame: frame, superView: self.view) { (color:UIColor) in
            self.colorBtn?.backgroundColor = color
            self.setLineColor(color: color)
        }
        
    }
    
    func setLineColor(color:UIColor)  {
        // 设置线条颜色。子类重写此方法设置
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
