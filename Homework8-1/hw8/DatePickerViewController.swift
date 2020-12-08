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
    
    @IBOutlet weak var timeZone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentDate()
    }
    
    
    @IBAction func currentDate() {
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "dd/MM/yyyy"
        labelDate.text = formatter.string(from: datePicker.date)
    }
}
