//
//  ViewController.swift
//  Project0
//
//  Created by Nadya Belozerova on 04.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.isHidden = true
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func equallyButton() // убрала (_sender: Any)
    {
    label1.isHidden = false
        let firstValue = Double(textField1.text!)
        let secondValue = Double(textField2.text!)
        let thirdValue = String(textField3.text!)
        
   
        enum Operator: String {
            
            case sum = "+"
            case div = "/"
            case minus = "-"
            case multi = "*"
            case root = "^"
            case modul = "%"
            func apply(_ a: Double, _ b: Double) -> Double {
                
                switch self {
                case .sum:
                    return a + b
                case .div:
                    return a / b
                case .minus:
                    return a - b
                case .multi:
                    return a * b
                case .root:
                    return pow((a),(b))
                case .modul:
                    return a.truncatingRemainder(dividingBy: b)
                }
            }
        }
        
        guard let operator1 = Operator(rawValue: "\(thirdValue)") else {
            return label1.text = "Некорректные данные"
        }
        

        guard let firstV = firstValue, let secondV = secondValue else {
            return label1.text = "Введите число"
        }
        
        let outputValue = operator1.apply(firstV, secondV)
                   label1.text = "Ответ \(outputValue)"
        
    }
}
        






   /*switch thirdValue {
   case "+":
     
        if let firstV = firstValue, let secondV = secondValue{
        
        
        let outputValue = Double(firstV + secondV)
              label1.text = "Ответ \(outputValue)"
    }
   case "*":
     if let firstV = firstValue, let secondV = secondValue{
          let outputValue = Double(firstV * secondV)
               label1.text = "Ответ \(outputValue)"
    }
           
    case "-":
         if let firstV = firstValue, let secondV = secondValue{
           let outputValue = Double(firstV - secondV)
            label1.text = "Ответ \(outputValue)"
        }
    case "/":
        if let firstV = firstValue, let secondV = secondValue{
           let outputValue = Double(firstV / secondV)
               label1.text = "Ответ \(outputValue)"
        }
   case "^":// добавила вычисление степени
    if let firstV = firstValue, let secondV = secondValue {
    let outputValue = Float80(pow(Double(firstV),Double(secondV)))
    label1.text = "Ответ \(outputValue)"
    }
   case "%": // добавила вычисление остатка
    if let firstV = firstValue, let secondV = secondValue {
    let outputValue = firstV.truncatingRemainder(dividingBy: secondV)
    label1.text = "Ответ \(outputValue)"
    }
       default:
           label1.text = "Некорректные данные"
       }
       
      }
   }
*/
    
  // было
   /* switch thirdValue {
    case "+" where firstValue != nil && secondValue != nil:
        let outputValue = Double(firstValue! + secondValue!)
            label1.text = "Ответ \(outputValue)"
           
    case "*" where firstValue != nil && secondValue != nil:
        let outputValue = Double(firstValue! * secondValue!)
            label1.text = "Ответ \(outputValue)"
        
    case "-" where firstValue != nil && secondValue != nil:
        let outputValue = Double(firstValue! - secondValue!)
         label1.text = "Ответ \(outputValue)"

    case "/" where firstValue != nil && secondValue != nil:
        let outputValue = Double(firstValue! / secondValue!)
            label1.text = "Ответ \(outputValue)"
          //}else{label1.text = "некорректные данные"}
    default:
        label1.text = "Некорректные данные"
    }
    
   }
}*/

   

