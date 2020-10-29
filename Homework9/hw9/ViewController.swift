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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        
        heightConstraint.constant += 50
        view.layoutIfNeeded()
    }
    
}

