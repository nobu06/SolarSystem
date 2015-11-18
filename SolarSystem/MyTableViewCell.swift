//
//  MyTableViewCell.swift
//  SolarSystem
//
//  Created by Nobuyuki on 11/14/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellItemName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
