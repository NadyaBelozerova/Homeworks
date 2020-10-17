//
//  ViewController.swift
//  Project_1
//
//  Created by Nadya Belozerova on 05.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     
    
    @IBOutlet weak var enterNames: UITextField!
    
    
    @IBOutlet weak var names: UILabel!


    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
   @IBAction func buttonN1() {
   
       guard let enterText = enterNames.text, let currentText = names.text else {

           return 

       }

       

       names.text = "\(currentText)  \(enterText)"
      }
    
  /*  @IBAction func buttonN1() {
    
        firstValue = ("\(names.text!)")
       }
     

    @IBAction func buttonN2() {
   
        names.text! = ("\(firstValue)  \(enterNames.text!)")
    
     }*/
       
    
}

