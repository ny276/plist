//
//  MyTableViewCell.swift
//  plist
//
//  Created by D7703_17 on 2018. 6. 21..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

      @IBOutlet weak var myCellTitle: UILabel!
      @IBOutlet weak var myCellAddress: UILabel!
      
      override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
