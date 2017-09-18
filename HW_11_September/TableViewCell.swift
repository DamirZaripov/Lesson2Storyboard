//
//  TableViewCell.swift
//  HW_11_September
//
//  Created by Дамир Зарипов on 18.09.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var avatarUIIMage: UIImageView!
    @IBOutlet weak var statusUIImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var surnameLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
