//
//  ViewController.swift
//  hw8
//
//  Created by Nadya Belozerova on 03.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "image_1")
        prevButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        prevButton.alpha = 0.8
        prevButton.isEnabled = false
        nextButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        nextButton.alpha = 0.8
        imageNumber = 1
    }
    
    func gallery(){
        switch imageNumber {
        case 1:
            prevButton.isEnabled = false
            imageView.image = UIImage(named: "image_1")
        case 2:
            prevButton.isEnabled = true
            imageView.image = UIImage(named: "image_2")
        case 3:
            imageView.image = UIImage(named: "image_3")
        case 4:
            imageView.image = UIImage(named: "image_4")
        case 5:
            imageView.image = UIImage(named: "image_5")
        case 6:
            imageView.image = UIImage(named: "image_6")
        case 7:
            imageView.image = UIImage(named: "image_7")
        case 8:
            imageView.image = UIImage(named: "image_8")
        case 9:
            nextButton.isEnabled = true
            imageView.image = UIImage(named: "image_9")
        case 10:
            nextButton.isEnabled = false
            imageView.image = UIImage(named: "image_0")
        default: break
        }
    }
    
    @IBAction func prevButton(_ sender: Any) {
        imageNumber -= 1
        self.gallery()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        imageNumber += 1
        self.gallery()
    }
}


