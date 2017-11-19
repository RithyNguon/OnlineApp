//
//  cellDataTableViewCell.swift
//  OnlineApp
//
//  Created by SBC on 10/18/17.
//  Copyright © 2017 RTC. All rights reserved.
//

import UIKit

class cellDataTableViewCell: UITableViewCell {
    @IBOutlet weak var cellMenuImages: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
