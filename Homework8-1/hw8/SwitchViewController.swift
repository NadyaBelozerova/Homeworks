//
//  SwitchViewController.swift
//  hw8
//
//  Created by Nadya Belozerova on 05.12.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func `switch`(_ sender: Any) {
        if switchButton.isOn == true {
            imageView.alpha = 1
            activityIndicator.stopAnimating()
            activityIndicator.hidesWhenStopped = true
        } else if switchButton.isOn == false {
            imageView.alpha = 0.3
            activityIndicator.startAnimating()
        }
    }
}
