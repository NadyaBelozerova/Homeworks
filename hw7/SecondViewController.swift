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
    func screenColorRed(_ rgb: UIColor)
    func screenColorGreen(_ rgb: UIColor)
    func screenColorBlue(_ rgb: UIColor)
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
        
       guard let color1 = ColorPallete(rawValue: sender.tag-0) else { return }
        delegate?.screenColorRed(color1.rgb)
        dismiss(animated: true)
        
        guard let color2 = ColorPallete(rawValue: sender.tag-1) else { return }
        delegate?.screenColorGreen(color2.rgb)
        dismiss(animated: true)
        
        guard let color3 = ColorPallete(rawValue: sender.tag-2) else { return }
        delegate?.screenColorBlue(color3.rgb)
            dismiss(animated: true)
        }

}

