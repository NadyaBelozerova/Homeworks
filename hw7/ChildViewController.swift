//
//  ChildViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

protocol ChildViewControllerDelegate: AnyObject {
    func changeColor(_ color: ColorPallete)
}

class ChildViewController: UIViewController {
    
weak var delegate: ChildViewControllerDelegate?
     
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let color = ColorPallete(rawValue: sender.tag) else { return }
        delegate?.changeColor(color)
    }
}

