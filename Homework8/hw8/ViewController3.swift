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
        for (index, view) in [view1, view2, view3].enumerated() {
            
            guard let viewUnwrapped = view else { return }
            viewUnwrapped.isHidden = index != sender.selectedSegmentIndex
        }
    }
}





