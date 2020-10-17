//
//  ViewController.swift
//  Project2
//
//  Created by Nadya Belozerova on 04.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1: UITextField!
    
    
    @IBOutlet weak var answer1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answer1.isHidden = true
        // Do any additional setup after loading the view.
    }

    

    @IBAction func newButton() {//убрала (_sender: Any)
           answer1.isHidden = false
                  let firstNumber = Int(number1.text!)
        guard let unwrapNumber = firstNumber else { return answer1.text = "Введите целое число"}// здесь исправила на guard
                  let output = Float80(pow(Double(2),Double(unwrapNumber)))
                      answer1.text = "Ответ \(output)"
                      
         }
}
    
    








/*
    @IBAction func newButton() {//убрала (_sender: Any)
        answer1.isHidden = false
               let firstNumber = Int(number1.text!)
               if let unwrapNumber = firstNumber  {// здесь добавила константу let unwrapNumber
               let output = Float80(pow(Double(2),Double(unwrapNumber))) // здесь я заменила Int на Float80 (или нужно было использовать Float64?), а также firstNumber! на unwrapNumber
                   answer1.text = "Ответ \(output)"
                   }else {
                   answer1.text = "Введите целое число"
               }
      }*/
    

// только теперь у целых чисел в ответе добавился хвост .0 Как его убрать?
          
        
        
        
        
        
       
       
      

   
