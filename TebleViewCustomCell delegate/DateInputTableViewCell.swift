//
//  DateInputTableViewCell.swift
//  TebleViewCustomCell delegate
//
//  Created by mitchell hudson on 7/1/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class DateInputTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dateInput: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
