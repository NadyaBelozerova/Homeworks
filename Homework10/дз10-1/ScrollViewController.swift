//
//  ScrollViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 30.11.2020.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var orderButton: UIButton!
    
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.borderWidth = 1
        menuButton.layer.cornerRadius = 5
        menuButton.layer.borderColor = UIColor.systemGreen.cgColor
        orderButton.layer.borderWidth = 1
        orderButton.layer.cornerRadius = 5
        orderButton.layer.borderColor = UIColor.systemGreen.cgColor
        createButton.layer.cornerRadius = 5
    }
}
