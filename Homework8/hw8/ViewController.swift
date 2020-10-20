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
    
    var images = ["image_1", "image_2", "image_3", "image_4", "image_5", "image_6", "image_7", "image_8", "image_9", "image_0"]
    
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
        
        for (index, value) in images.enumerated(){
            if imageNumber == index + 1 {
                imageView.image = UIImage(named: images[index])       
            }
     
            if imageNumber == 1 {
                prevButton.isEnabled = false
            } else if imageNumber == 2 {
                prevButton.isEnabled = true
            } else if imageNumber == 10 {
                nextButton.isEnabled = false
            } else if imageNumber == 9 {
                nextButton.isEnabled = true
            }
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


