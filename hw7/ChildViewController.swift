//
//  ChildViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let vc = segue.destination as? ParentViewController, segue.identifier == "Green" {
             vc.view.backgroundColor = .green
          
         }else if let vc = segue.destination as? ParentViewController, segue.identifier == "Yellow"{
             vc.view.backgroundColor = .yellow
      
         }else if let vc = segue.destination as? ParentViewController, segue.identifier == "Purple"{
             vc.view.backgroundColor = .purple
       
         }
     }

}
