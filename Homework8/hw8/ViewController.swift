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
   
    @IBOutlet weak var stepperButton: UIStepper!
    
    @IBOutlet weak var imageSlider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    
    var imageNumber = 0
    
   var images = [UIImage(named: "image_1"), UIImage(named: "image_2"), UIImage(named: "image_3"), UIImage(named: "image_4"), UIImage(named: "image_5"), UIImage(named: "image_6"), UIImage(named: "image_7"), UIImage(named: "image_8"), UIImage(named: "image_9"), UIImage(named: "image_0")]
    
    
var imagesNames = ["image_1", "image_2", "image_3", "image_4", "image_5", "image_6", "image_7", "image_8", "image_9", "image_0"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperButton.setIncrementImage(UIImage(named: "next.png"), for: .normal)
        stepperButton.setDecrementImage(UIImage(named: "prev2.png"), for: .normal
        )
    }
    
    
    /*func gallery(){
        
        imageView.image = UIImage(named: images[imageNumber])
        prevButton.isEnabled = imageNumber > 0
        nextButton.isEnabled = imageNumber < images.count - 1
    }*/
    
    @IBAction func prevButton(_ sender: Any) {
        imageView.animationImages = [UIImage(named: "image_1"), UIImage(named: "image_2"), UIImage(named: "image_3"), UIImage(named: "image_4"), UIImage(named: "image_5"), UIImage(named: "image_6"), UIImage(named: "image_7"), UIImage(named: "image_8"), UIImage(named: "image_9"), UIImage(named: "image_0")] as? [UIImage]
        
        imageView.animationDuration = 10
        imageView.startAnimating()
        
        
        
        
        //imageNumber -= 1
       // self.gallery()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        imageView.stopAnimating()
        
        //imageNumber += 1
       // self.gallery()
    }
    
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        var value = Int(sender.value)
        imageView.image = images[value]
    }
    
    @IBAction func slider(_ sender: UISlider) {
        var value = Int(sender.value)
        imageView.image = images[value]
        label.text = imagesNames[value]
        
    }
    
    
}


