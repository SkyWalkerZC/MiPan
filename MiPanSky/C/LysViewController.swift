//
//  LysViewController.swift
//  MiPanSky
//
//  Created by 梁永升 on 2019/1/21.
//  Copyright © 2019年 Z.chen. All rights reserved.
//

import UIKit
class LysViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    let cellId = "DemoList"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white;
        self.title = "会议列表"
        
        var array = [Int](repeating: 9, count: 5)
        array.append(3)
        print("----\(array)");
        
        var someInts:[Int] = [10, 20, 30]
        print(someInts)
        someInts.remove(at: 0)
        print(someInts)
        creatTab()
    }
    
    
    func creatTab() {
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = UIColor.white
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        tableView.register(LysDemoCell.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView = UIView(frame: CGRect(x:0,y:0,width:0,height:0))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:LysDemoCell? = tableView.dequeueReusableCell(withIdentifier: cellId) as?LysDemoCell
        let indexs = indexPath.row + 1
        cell?.textLab.text = String("第\(indexs)行")
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(MeetStatisticsController(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = false
    }
    
}
