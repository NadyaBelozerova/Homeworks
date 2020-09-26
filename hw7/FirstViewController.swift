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
    var firstLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabelVC.text = firstLabel
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let vc1 = segue.destination as? SecondViewController, segue.identifier == "Next" {
        vc1.secondLabel = firstLabel
        
      if firstLabel == "Выбран Синий" {
            vc1.view.backgroundColor = .blue
        }else if firstLabel == "Выбран Красный"{
            vc1.view.backgroundColor = .red
        }else if firstLabel == "Выбран Зеленый"{
            vc1.view.backgroundColor = .green
            }
      
        }
        
    }
    
    
   
}
