//
//  DateInputTableViewCell.swift
//  TebleViewCustomCell delegate
//
//  Created by mitchell hudson on 7/1/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit


// This class conforms to the date manager delegate. Another class
// can call the end date was set method and pass the date. 

class DateInputTableViewCell: UITableViewCell, DateManagerDelegate {
    
    
    @IBOutlet weak var dateInput: UITextField!
    
    
    // Other class will delegte to this class to display a date.
    
    func endDateWasSet(date: NSDate) {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .FullStyle
        formatter.timeStyle = .FullStyle
        dateInput.text = formatter.stringFromDate(date)
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
