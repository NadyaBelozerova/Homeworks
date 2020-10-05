//
//  FirstViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabelVC: UILabel!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let vc1 = segue.destination as? SecondViewController, segue.identifier == "Next" {
      guard let unwrappedFirstLabel = firstLabelVC.text else { return }
      vc1.secondLabel = unwrappedFirstLabel
      vc1.delegate = self
        }
    }
}

extension FirstViewController: SecondControllerDelegate {
    
    func labelColor(_ color: String) {
        firstLabelVC.text = "\(color)"   
    }
    
    func changeColor(_ color1: ColorPallete) {
        view.backgroundColor = color1.rgb
    }
}
