//
//  SecondViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

protocol SecondControllerDelegate{
    func labelColor(_ color: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLabelVC: UILabel!
    var secondLabel = ""
    var color = ""

    var delegate: SecondControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabelVC.text = secondLabel
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func greenButton() {
        color = "Выбран зеленый"
        delegate?.labelColor(color)
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func blueButton() {
        color = "Выбран синий"
        delegate?.labelColor(color)
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func redButton() {
        color = "Выбран красный"
        delegate?.labelColor(color)
        dismiss(animated: true, completion: nil)
        
    }

 }

