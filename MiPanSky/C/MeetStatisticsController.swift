//
//  MeetStatisticsController.swift
//  MiPanSky
//
//  Created by 梁永升 on 2019/1/21.
//  Copyright © 2019年 Z.chen. All rights reserved.
//

import UIKit

class MeetStatisticsController: UIViewController {

    var baseScroll:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.title = "会议统计"
        initSegMent()
    }
    
    func initSegMent()  {
        let segMent:UISegmentedControl = UISegmentedControl.init(items: ["统计","会议管理"])
        segMent.frame = CGRect(x: (kScreenWidth - 240)/2, y: 75, width: 240, height: 35)
        segMent.tintColor = UIColor.blue
        let font = UIFont.systemFont(ofSize: 15)
        segMent.setTitleTextAttributes([NSAttributedString.Key.font:font], for: .normal)
        segMent.selectedSegmentIndex = 0
        segMent.addTarget(self, action:#selector(segMentAction), for: .valueChanged)
        self.view.addSubview(segMent)
        
        baseScroll = UIScrollView(frame: CGRect(x: 0, y: 120, width: kScreenWidth, height: kScreenHeight - 120))
        baseScroll?.backgroundColor = UIColor.lightGray
        baseScroll?.isPagingEnabled = true
        baseScroll?.contentSize = CGSize(width: kScreenWidth*2, height: kScreenHeight - 120)
        self.view.addSubview(baseScroll)
                
    }
    
    @objc func segMentAction(seg:UISegmentedControl)  {
        if seg.selectedSegmentIndex == 0 {
            baseScroll?.setContentOffset(CGPoint(x:kScreenWidth, y: 0), animated: true)
        }else{
            baseScroll?.setContentOffset(CGPoint(x:kScreenWidth*2, y: 0), animated: true)
        }
    }
}
