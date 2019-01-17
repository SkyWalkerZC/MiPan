//
//  BaseViewController.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        let backBtn = UIButton(type: .custom)
        self.view.addSubview(backBtn)
        backBtn.frame = CGRect(x: 10, y: 40, width: 50, height: 20)
        backBtn.setTitle("Back", for: UIControl.State.normal)
        backBtn.setTitleColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), for: UIControl.State.normal)
        backBtn.addTarget(self, action: #selector(back), for: UIControl.Event.touchUpInside)
        
        // TODO: 底部编辑，撤销，清空，颜色粗细选择等
        let cleanLastBtn = UIButton(type: .custom)
        view.addSubview(cleanLastBtn)
        cleanLastBtn.frame = CGRect(x: 10, y: kScreenHeight - 30, width: 40, height: 20)
        cleanLastBtn.setTitle("撤销", for: UIControl.State.normal)
        cleanLastBtn.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: UIControl.State.normal)
        cleanLastBtn.addTarget(self, action: #selector(revocation), for: UIControl.Event.touchUpInside)
        
        let cleanAllBtn = UIButton(type: .custom)
        view.addSubview(cleanAllBtn)
        cleanAllBtn.frame = CGRect(x: 60, y: kScreenHeight - 30, width: 40, height: 20)
        cleanAllBtn.setTitle("清除", for: UIControl.State.normal)
        cleanAllBtn.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: UIControl.State.normal)
        cleanAllBtn.addTarget(self, action: #selector(cleanAll), for: UIControl.Event.touchUpInside)
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
