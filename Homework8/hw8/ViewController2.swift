//
//  ViewController2.swift
//  hw8
//
//  Created by Nadya Belozerova on 03.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    struct Image {
        let raw: UIImage?
        let text: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = [Image(raw: UIImage(named: "image_7"), text: "Лейбл 1"), Image(raw: UIImage(named: "image_8"), text: "Лейбл 2"), Image(raw: UIImage(named: "image_5"), text: "Лейбл 3"), Image(raw: UIImage(named: "image_1"), text: "Лейбл 4")]
        
        var x = 20
        var y = -180
        let width = 120
        let height = 180
        
        for (index, image) in images.enumerated() {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
            imageView.image = image.raw
            let label = UILabel(frame: CGRect(x: 0, y: 180, width: width, height: height / 5))
            label.text = image.text
            
            if index % 2 == 0 {
                x = 20
                y += 240
            } else {
                x = 170
            }
            
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            let frameForContainer = CGRect(x: x, y: y, width: width, height: height)
            
            let containerViewForImageAndLabel = UIView(frame: frameForContainer)
            containerViewForImageAndLabel.addSubview(imageView) //
            containerViewForImageAndLabel.addSubview(label)
            view.addSubview(containerViewForImageAndLabel)
        }
    }
}


