//
//  ViewController2.swift
//  hw8
//
//  Created by Nadya Belozerova on 03.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var imgArray = [UIImage]()
    
    let labelsText = ["Лейбл 1", "Лейбл 2", "Лейбл 3", "Лейбл 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgArray = [#imageLiteral(resourceName: "image_7"), #imageLiteral(resourceName: "image_8"), #imageLiteral(resourceName: "image_5"), #imageLiteral(resourceName: "image_1")]
        
        let width = 170
        let height = 250
        var pointX = 0
        var pointY = 0
         
        for index in 0..<imgArray.count {
            
            if index == 0 || index == 2 {
                pointX = 30
                
            } else if index == 1 || index == 3 {
                pointX = 220
            }
            
            pointY = height + 150
            
            let imageView = UIImageView()
            imageView.image = imgArray[index]
            
            if index == 0 || index == 1 {
                imageView.frame = CGRect(x: pointX, y: 100, width: width, height: height)
            } else {
                imageView.frame = CGRect(x: pointX, y: pointY, width: width, height: height)
            }
            
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            view.addSubview(imageView)
        }
        
        for index in 0..<labelsText.count {
            
            if index == 0 || index == 2 {
                pointX = 30
                
            } else if index == 1 || index == 3 {
                pointX = 220
            }
            
            pointY = height + 150
            
            let labels = UILabel()
            labels.text = labelsText[index]
            
            if index == 0 || index == 1 {
                labels.frame = CGRect(x: pointX, y: 360, width: width, height: 30)
            } else {
                labels.frame = CGRect(x: pointX, y: 660, width: width, height: 30)
            }
            
            view.addSubview(labels)
        }
    }
}


