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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        textLab = UILabel(frame: CGRect(x:10,y:10,width: 200,height:40))
        textLab.font = UIFont.boldSystemFont(ofSize: 17)
        textLab.textColor = UIColor.red
        self.contentView.addSubview(textLab)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
