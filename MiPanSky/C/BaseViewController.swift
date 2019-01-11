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

        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI() {
        let backBtn = UIButton(type: .custom)
        self.view.addSubview(backBtn)
        backBtn.frame = CGRect(x: 10, y: 40, width: 50, height: 20)
        backBtn.setTitle("Back", for: UIControl.State.normal)
        backBtn.setTitleColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), for: UIControl.State.normal)
        backBtn.addTarget(self, action: #selector(back), for: UIControl.Event.touchUpInside)
    }

    @objc func back() {
        self.navigationController?.popViewController(animated: true)
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
