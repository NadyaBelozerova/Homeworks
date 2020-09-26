//
//  ParentViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let vc1 = segue.destination as? ChildViewController, segue.identifier == "Green1" {
                vc1.view.backgroundColor = .green
             
            }else if let vc1 = segue.destination as? ChildViewController, segue.identifier == "Yellow1"{
                vc1.view.backgroundColor = .yellow
         
            }else if let vc1 = segue.destination as? ChildViewController, segue.identifier == "Purple1"{
                vc1.view.backgroundColor = .purple
          
            }
        }


}
