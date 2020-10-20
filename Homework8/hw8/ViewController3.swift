//
//  ViewController3.swift
//  hw8
//
//  Created by Nadya Belozerova on 03.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBAction func segment(_ sender: UISegmentedControl){
        switch sender.selectedSegmentIndex {
        case 0:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
        case 1:
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
        case 2:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
        default: break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = true
        
    }
}





