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
        imageNumber = 0
    }
    
    func gallery(){
        
        imageView.image = UIImage(named: images[imageNumber])
        prevButton.isEnabled = imageNumber > 0
        nextButton.isEnabled = imageNumber < images.count - 1
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


