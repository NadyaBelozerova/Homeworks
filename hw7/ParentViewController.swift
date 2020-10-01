//
//  ParentViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    var childController: ChildViewController?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Next2", let childController = segue.destination as? ChildViewController {
            self.childController = childController
            childController.delegate = self
        }
    }

    @IBAction func greenButton() {
        childController?.view.backgroundColor = .green
    }
    
    @IBAction func yellowButton() {
        childController?.view.backgroundColor = .yellow
    }
    
    @IBAction func purpleButton() {
        childController?.view.backgroundColor = .purple
    }
}

extension ParentViewController: ChildViewControllerDelegate {
    func changeColor(_ color1: UIColor) {
        view.backgroundColor = .green
    }
    func changeColor2(_ color2: UIColor) {
        view.backgroundColor = .yellow
    }
    func changeColor3(_ color3: UIColor) {
        view.backgroundColor = .purple
    }
}


