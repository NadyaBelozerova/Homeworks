//
//  ViewController.swift
//  hw9
//
//  Created by Nadya Belozerova on 15.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    var counter = 0
    @IBAction func button(_ sender: Any) {
        
        counter += 1
        
        if counter % 2 == 0 {
            heightConstraint.constant -= 150
        }else {
            heightConstraint.constant += 150
        }
        
        view.layoutIfNeeded()
    }
}

