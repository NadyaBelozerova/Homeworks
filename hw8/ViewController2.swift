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

    let views = [
    UIImageView(frame: CGRect(x: 30, y: 100, width: 170, height: 250)),
    UIImageView(frame: CGRect(x: 220, y: 100, width: 170, height: 250)),
    UIImageView(frame: CGRect(x: 30, y: 400, width: 170, height: 250)),
    UIImageView(frame: CGRect(x: 220, y: 400, width: 170, height: 250))]
    
    let labels = [UILabel(frame: CGRect(x: 30, y:  360, width: 170, height: 20)), UILabel(frame: CGRect(x: 220, y:  360, width: 170, height: 20)), UILabel(frame: CGRect(x: 30, y:  660, width: 170, height: 20)), UILabel(frame: CGRect(x: 220, y:  660, width: 170, height: 20))]
    
    let labelsText = ["Лейбл 1", "Лейбл 2", "Лейбл 3", "Лейбл 4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        imgArray = [#imageLiteral(resourceName: "image_7"), #imageLiteral(resourceName: "image_8"), #imageLiteral(resourceName: "image_5"), #imageLiteral(resourceName: "image_1")]
    
        for (index, value) in views.enumerated() {
            self.view.addSubview(views[index])
            views[index].image = imgArray[index]
            views[index].contentMode = .scaleAspectFill
            views[index].clipsToBounds = true
       }
        
        for (index, value) in labels.enumerated() {
            self.view.addSubview(labels[index])
            labels[index].text = labelsText[index]
       }
   }
}


