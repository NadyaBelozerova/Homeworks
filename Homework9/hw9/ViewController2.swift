//
//  ViewController2.swift
//  hw9
//
//  Created by Nadya Belozerova on 02.11.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelOrange: UILabel!
     
    @IBAction func changeOrange(_ sender: UITextField) {
        self.labelOrange.text = sender.text
        
    }
    
    @IBAction func changeGreen(_ sender: UITextField) {
        self.labelGreen.text = sender.text
    }
    
    
    
}
