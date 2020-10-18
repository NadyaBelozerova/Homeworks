//
//  ViewController3.swift
//  hw8
//
//  Created by Nadya Belozerova on 03.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

let txtFields = [UITextField(frame: CGRect(x: 50, y: 300, width: 300.00, height: 30.00)), UITextField(frame: CGRect(x: 50, y: 350, width: 300.00, height: 30.00))]

let buttons = [UIButton(frame: CGRect(x: 50, y: 300, width: 100.00, height: 50.00)), UIButton(frame: CGRect(x: 50, y: 370, width: 100.00, height: 50.00))]
    
let imageViews = [UIImageView(frame: CGRect(x: 50, y: 300, width: 300.00, height: 130.00)), UIImageView(frame: CGRect(x: 50, y: 450, width: 300.00, height: 130.00))]
    
let images = [UIImage(named: "image_1"), UIImage(named: "image_2")]
    
    @IBAction func segment(_ sender: UISegmentedControl){
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .green
            for (index, value) in txtFields.enumerated(){
                self.view.addSubview(txtFields[index])
                txtFields[index].backgroundColor = .white
                txtFields[index].borderStyle = .line
                txtFields[index].placeholder = "Введите текст"
                imageViews[index].isHidden = true
                txtFields[index].isHidden = false
                buttons[index].isHidden = true
            }
        case 1:
            view.backgroundColor = .blue
            for (index, value) in buttons.enumerated(){
                buttons[index].backgroundColor = .black
                buttons[index].setTitle("Кнопка", for: .normal)
                self.view.addSubview(buttons[index])
                txtFields[index].isHidden = true
                buttons[index].isHidden = false
                imageViews[index].isHidden = true
            }
        case 2:
            view.backgroundColor = .purple
            for (index, value) in imageViews.enumerated(){
                self.view.addSubview(imageViews[index])
                imageViews[index].image = images[index]
                imageViews[index].contentMode = .scaleAspectFill
                imageViews[index].clipsToBounds = true
                imageViews[index].isHidden = false
                txtFields[index].isHidden = true
                buttons[index].isHidden = true
            }
        default: break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green 
        for (index, value) in txtFields.enumerated(){
            self.view.addSubview(txtFields[index])
            txtFields[index].backgroundColor = .white
            txtFields[index].borderStyle = .line
            txtFields[index].placeholder = "Введите текст"
            imageViews[index].isHidden = true
            txtFields[index].isHidden = false
            buttons[index].isHidden = true
        }
    }
}





