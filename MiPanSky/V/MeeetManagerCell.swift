//
//  MeeetManagerCell.swift
//  MiPanSky
//
//  Created by 梁永升 on 2019/1/22.
//  Copyright © 2019年 Z.chen. All rights reserved.
//

import UIKit

class MeeetManagerCell: UITableViewCell {
    
    var iconImg:UIImageView!
    var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let lineView = UIView(frame: CGRect(x: 0, y: 57, width: kScreenWidth - 1, height: 1))
        lineView.backgroundColor = UIColor.init(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1.0)
        self.contentView.addSubview(lineView)
        
        iconImg = UIImageView(frame: CGRect(x: 15, y: 18, width: 20, height: 18))
        self.contentView.addSubview(iconImg)
        
        titleLabel = UILabel(frame: CGRect(x: 45, y: 0, width: 120, height: 58))
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        self.contentView.addSubview(titleLabel)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)

    }

}
