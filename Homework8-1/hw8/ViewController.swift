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
    
    @IBOutlet weak var progress: UIProgressView!
    
    
    var images = [UIImage(named: "image_1"), UIImage(named: "image_2"), UIImage(named: "image_3"), UIImage(named: "image_4"), UIImage(named: "image_5"), UIImage(named: "image_6"), UIImage(named: "image_7"), UIImage(named: "image_8"), UIImage(named: "image_9"), UIImage(named: "image_0")]
    
    var imagesNames = ["image_1", "image_2", "image_3", "image_4", "image_5", "image_6", "image_7", "image_8", "image_9", "image_0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperButton.setIncrementImage(UIImage(named: "next.png"), for: .normal)
        stepperButton.setDecrementImage(UIImage(named: "prev2.png"), for: .normal)
    }
    
    
    @IBAction func prevButton(_ sender: Any) {
        imageView.animationImages = [UIImage(named: "image_1"), UIImage(named: "image_2"), UIImage(named: "image_3"), UIImage(named: "image_4"), UIImage(named: "image_5"), UIImage(named: "image_6"), UIImage(named: "image_7"), UIImage(named: "image_8"), UIImage(named: "image_9"), UIImage(named: "image_0")] as? [UIImage]
        
        imageView.animationDuration = 10
        imageView.startAnimating()
        progressBar()
        
    }
    
    func progressBar() {
        self.progress.setProgress(Float(images.count), animated: true)
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        imageView.stopAnimating()
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        imageView.image = images[value]
        
    }
    
    @IBAction func slider(_ sender: UISlider) {
        let value1 = Int(sender.value)
        imageView.image = images[value1]
        label.text = imagesNames[value1]
        
    }
    
    
}


