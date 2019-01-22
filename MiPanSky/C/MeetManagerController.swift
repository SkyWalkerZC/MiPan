//
//  MeetManagerController.swift
//  MiPanSky
//
//  Created by 梁永升 on 2019/1/22.
//  Copyright © 2019年 Z.chen. All rights reserved.
//

import UIKit

class MeetManagerController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let ManagerCellId = "ManagerCell_Id"
    
    let dataSource:Array = [[["icon":"meeting_code","title":"验票签到"],
                      ["icon":"qrCodeManager","title":"签到二维码"]],
                      [["icon":"personManager","title":"人员管理"],
                      ["icon":"riceManager","title":"用餐接待"],
                      ["icon":"houseManager","title":"住宿接待"]]]
    
    var managerTab:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        initManagerTab()
    }
    
    func initManagerTab() {
        managerTab = UITableView(frame: self.view.bounds, style: .grouped)
        managerTab.delegate = self
        managerTab.dataSource = self
        managerTab.separatorStyle = .none
        managerTab.showsVerticalScrollIndicator = false
        managerTab.rowHeight = 58
        managerTab.register(MeeetManagerCell.self, forCellReuseIdentifier: ManagerCellId)
        self.view.addSubview(managerTab)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        }
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MeeetManagerCell? = tableView.dequeueReusableCell(withIdentifier: ManagerCellId) as?MeeetManagerCell
        let rowDic = dataSource[indexPath.section][indexPath.row]
        let iconStr:String? = rowDic["icon"]
        
        cell?.iconImg.image = UIImage.init(named: iconStr!)
        cell?.titleLabel.text = rowDic["title"]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let headView = UIView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: 10))
        return headView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let headView = UIView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: 0.1))
        return headView
    }
}
