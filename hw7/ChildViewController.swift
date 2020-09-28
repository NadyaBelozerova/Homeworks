//
//  ChildViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit
protocol ChildViewControllerDelegate: AnyObject {
    
    func changeColor()
    func changeColor2()
    func changeColor3()
    
    
}

class ChildViewController: UIViewController {
    
weak var delegate: ChildViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func greenButton() {
        delegate?.changeColor()
    }
    
    
    @IBAction func yellowButton() {
        delegate?.changeColor2()
    }
    
    
    
    @IBAction func purpleButton() {
        delegate?.changeColor3()
    }
    
}
