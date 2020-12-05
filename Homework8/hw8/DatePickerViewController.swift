//
//  DatePickerViewController.swift
//  hw8
//
//  Created by Nadya Belozerova on 05.12.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var labelDate: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDate.text = "\(datePicker.date)"
       
   
    }
    

    @IBAction func currentDate(_ sender: Any) {
        labelDate.text = "\(datePicker.date)"
       
    }
    

}
