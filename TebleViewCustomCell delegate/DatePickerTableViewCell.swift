//
//  DatePickerTableViewCell.swift
//  TebleViewCustomCell delegate
//
//  Created by mitchell hudson on 7/1/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit


// This class provides a source for a date. The class declares a protocol. 
// Any class wanting to receive the date from this class implements the 
// didSetDate method. 


protocol DatePickerCellDelegate {
    func didSetDate(date: NSDate)
}



class DatePickerTableViewCell: UITableViewCell {
    
    var delegate: DatePickerCellDelegate?
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        if let delegate = delegate {
            delegate.didSetDate(sender.date)
        }
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
