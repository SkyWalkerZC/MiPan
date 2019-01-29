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
        
        let dic = [1:"one",2:"two",3:"three"]
        for item in dic {
            print("key=\(item.key),value=\(item.value)")
        }
        
        let array = (2,"4",5.9,"45")
        print(array)
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
        baseScroll?.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
        baseScroll.isScrollEnabled = false
        baseScroll?.isPagingEnabled = true
        baseScroll.showsHorizontalScrollIndicator = false
        baseScroll?.contentSize = CGSize(width: kScreenWidth*2, height: kScreenHeight - 120)
        self.view.addSubview(baseScroll)
        
        AddController()
    }
    
    func AddController() {
        let meetVc = MeetManagerController()
        meetVc.view.frame = CGRect(x: kScreenWidth, y: 0, width: kScreenWidth, height: kScreenHeight - 120)
        self.addChild(meetVc)
        baseScroll.addSubview(meetVc.view)
        
        let statisticalVc = StatisticalController()
        statisticalVc.view.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight - 120)
        self.addChild(statisticalVc)
        baseScroll.addSubview(statisticalVc.view)
    }
    
    @objc func segMentAction(seg:UISegmentedControl)  {
        let indexs =  CGFloat(seg.selectedSegmentIndex)
        baseScroll?.setContentOffset(CGPoint.init(x: kScreenWidth*indexs, y: 0), animated: true)
    }
}
