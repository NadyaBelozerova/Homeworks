//
//  ChildViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

protocol ChildViewControllerDelegate: AnyObject {
    
    func changeColor(_ color1: UIColor)
    func changeColor2(_ color2: UIColor)
    func changeColor3(_ color3: UIColor)
}

class ChildViewController: UIViewController {
    
weak var delegate: ChildViewControllerDelegate?
     
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let color1 = ColorPallete(rawValue: sender.tag-6) else { return }
        delegate?.changeColor(color1.rgb)
        
        guard let color2 = ColorPallete(rawValue: sender.tag-7) else { return }
        delegate?.changeColor2(color2.rgb)
        
        guard let color3 = ColorPallete(rawValue: sender.tag-8) else { return }
        delegate?.changeColor3(color3.rgb)
        
    }
}

