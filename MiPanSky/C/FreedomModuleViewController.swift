//
//  FreedomModuleViewController.swift
//  MiPanSky
//
//  Created by Z.chen on 2019/1/11.
//  Copyright © 2019 Z.chen. All rights reserved.
//

import UIKit

class FreedomModuleViewController: BaseViewController {
    
    var freedomView:FreedomDrawLine?

    override func viewDidLoad() {
        super.viewDidLoad()
        setDrawPaper()
    }
    
    func setDrawPaper() {
        freedomView = FreedomDrawLine(frame: UIScreen.main.bounds)
        self.view.addSubview(freedomView!)
        self.view.sendSubviewToBack(freedomView!)
    }
    
    override func revocation() {
        freedomView?.cleanFinallyDraw()
    }
    
    override func cleanAll() {
        freedomView?.cleanAllDraw()
    }
    
    override func setLineColor(color: UIColor) {
        freedomView?.currentPaintColor = color
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
