//
//  ViewController.swift
//  hw7-5
//
//  Created by Nadya Belozerova on 12.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
   
    @IBOutlet weak var container1: UIView!
    @IBOutlet weak var container2: UIView!
    @IBOutlet weak var container3: UIView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    // По заданию вроде бы по нажатию на кнопки должен меняться цвет текста кнопки, а не цвет фона. Но у меня получилось только с фоном
    // И еще не понимаю как сделать вот это: " Если все контроллеры выключены, должна быть возможность для пользователя этого Container ViewController указать контроллер заглушку."
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.backgroundColor = .blue
        button2.backgroundColor = .blue
        button3.backgroundColor = .blue
    }
  
    @IBAction func button(_ sender: UIButton) {
        if sender == button1 {
            if button1.backgroundColor == UIColor.gray {
                button1.backgroundColor = UIColor.blue
                container1.isHidden = false
            } else if button1.backgroundColor == UIColor.blue {
                button1.backgroundColor = UIColor.gray
                container1.isHidden = true
            }
        } else if sender == button2 {
            if button2.backgroundColor == UIColor.gray {
                button2.backgroundColor = UIColor.blue
                container2.isHidden = false
            } else if button2.backgroundColor == UIColor.blue {
                button2.backgroundColor = UIColor.gray
                container2.isHidden = true
            }
        } else if sender == button3 {
            if button3.backgroundColor == UIColor.gray {
                button3.backgroundColor = UIColor.blue
                container3.isHidden = false
            }
            else if button3.backgroundColor == UIColor.blue {
                button3.backgroundColor = UIColor.gray
                container3.isHidden = true
            }
        }
    }
}

