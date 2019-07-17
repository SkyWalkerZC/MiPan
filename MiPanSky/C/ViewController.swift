//
//  ViewController.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
/*
     主页面  选择模式
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func freedomTap(_ sender: UITapGestureRecognizer) {
        let freedomVC = FreedomModuleViewController()
        self.navigationController?.pushViewController(freedomVC, animated: true)
    }
    @IBAction func leftAndRightTap(_ sender: Any) {
        let lARVC = LeftAndRightSymmetryViewController()
        self.navigationController?.pushViewController(lARVC, animated: true)
        
    }
    @IBAction func centerSymmetryTap(_ sender: Any) {
        let centerSymmetryVC = CenterSymmetryViewController()
        self.navigationController?.pushViewController(centerSymmetryVC, animated: true)
        
    }
    @IBAction func symmetryRotationTap(_ sender: Any) {
        let symmetryRVC = SymmetryRotationViewController()
        self.navigationController?.pushViewController(symmetryRVC, animated: true)
        
    }
    
}

