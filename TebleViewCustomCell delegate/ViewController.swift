//
//  ViewController.swift
//  TebleViewCustomCell delegate
//
//  Created by mitchell hudson on 7/1/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit



// This class will receieve a date from another class and pass the date on
// a third class.


protocol DateManagerDelegate {
    func endDateWasSet(date: NSDate)
}



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DatePickerCellDelegate {

    
    var delegate: DateManagerDelegate?
    
    var theDate = NSDate()
    var inputCell: DateInputTableViewCell?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    // MARK: DatePickerCell Delegate 
    
    func didSetDate(date: NSDate) {
        
        theDate = date
        // tableView.reloadData()
        if let inputCell = inputCell {
            inputCell.dateInput.text = "\(theDate)"
        }
        
        if let delegate = delegate {
            delegate.endDateWasSet(date)
        }
    }
    
    
    // MARK: TableView stuff
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cellId = "dateInputCell"
        if indexPath.row == 1 {
            cellId = "datePickerCell"
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId)!
        
        if indexPath.row == 0 {
            // Input cell
            let inputCell = cell as! DateInputTableViewCell
            // inputCell.dateInput.text = "\(theDate)"
            // self.inputCell = inputCell
            delegate = inputCell
        } else {
            // picker cell
            let pickerCell = cell as! DatePickerTableViewCell
            pickerCell.delegate = self
        }
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 110
        }
        
        return 40
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

