//
//  ViewController.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func freedomTap(_ sender: UITapGestureRecognizer) {
        print("click freedom")
        let freedomVC = FreedomModuleViewController()
        self.navigationController?.pushViewController(freedomVC, animated: true)
    }
    @IBAction func leftAndRightTap(_ sender: Any) {
        print("click left and right")
        let lARVC = LeftAndRightSymmetryViewController()
        self.navigationController?.pushViewController(lARVC, animated: true)
        
    }
    @IBAction func centerSymmetryTap(_ sender: Any) {
        print("click center symmetry")
        let centerSymmetryVC = CenterSymmetryViewController()
        self.navigationController?.pushViewController(centerSymmetryVC, animated: true)
        
    }
    @IBAction func symmetryRotationTap(_ sender: Any) {
        print("click symmetry rotation")
        let symmetryRVC = SymmetryRotationViewController()
        self.navigationController?.pushViewController(symmetryRVC, animated: true)
        
    }
    
}

