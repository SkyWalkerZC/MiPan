//
//  LysDemoCell.swift
//  MiPanSky
//
//  Created by 梁永升 on 2019/1/21.
//  Copyright © 2019年 Z.chen. All rights reserved.
//

import UIKit

class LysDemoCell: UITableViewCell {

    var textLab:UILabel!
    var iconImg:UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconImg = UIImageView(frame: CGRect(x:20,y:10,width: kScreenWidth - 40,height:140))
        iconImg.backgroundColor = UIColor.green
        iconImg.layer.cornerRadius = 4
        iconImg.layer.masksToBounds = true
        iconImg.layer.shouldRasterize = true
        iconImg.layer.rasterizationScale = UIScreen.main.scale
        iconImg.image = UIImage.init(named: "meetIng.jpg")
        self.contentView.addSubview(iconImg)
        
        textLab = UILabel(frame: CGRect(x:20,y:160,width: 200,height:20))
        textLab.font = UIFont.boldSystemFont(ofSize: 15)
        textLab.textColor = UIColor.black
        self.contentView.addSubview(textLab)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)

    }

}
