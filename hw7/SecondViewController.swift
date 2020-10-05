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
    
    func changeColor(_ color1: ColorPallete)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLabelVC: UILabel!
    var secondLabel = ""

    var delegate: SecondControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabelVC.text = secondLabel
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let color = ColorPallete(rawValue: sender.tag) else { return }
        delegate?.labelColor(color.selectedDescription)
        
        guard let color1 = ColorPallete(rawValue: sender.tag) else { return }
        delegate?.changeColor(color1)
        dismiss(animated: true)
   }
}


