//
//  SecondViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLabelVC: UILabel!
    var secondLabel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabelVC.text = secondLabel
        // Do any additional setup after loading the view.
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let vc = segue.destination as? FirstViewController, segue.identifier == "Red" {
           vc.firstLabel = "Выбран Красный"
        
       }else if let vc = segue.destination as? FirstViewController, segue.identifier == "Blue"{
           vc.firstLabel = "Выбран Синий"
    
       }else if let vc = segue.destination as? FirstViewController, segue.identifier == "Green"{
           vc.firstLabel = "Выбран Зеленый"
     
       }
   }

 }

