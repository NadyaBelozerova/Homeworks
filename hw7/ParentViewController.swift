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
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let color = ColorPallete(rawValue: sender.tag) else { return }
        childController?.view.backgroundColor = color.rgb
    }
}

extension ParentViewController: ChildViewControllerDelegate {
    func changeColor(_ color: ColorPallete) {
        view.backgroundColor = color.rgb
    }
}




