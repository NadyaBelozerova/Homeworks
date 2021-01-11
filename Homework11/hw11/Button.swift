//
//  Button.swift
//  hw11
//
//  Created by Nadya Belozerova on 09.12.2020.
//

import UIKit

@IBDesignable class Button: UIButton {
    
    var  isSetuped = false
    
    @IBInspectable var radius: CGFloat = 10 {
        didSet { updateRadius() }
    }
    @IBInspectable var borderColor1: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor1.cgColor
        }
    }
    
    @IBInspectable var borderSize: CGFloat = 2 {
        didSet { updateBorderWidth() }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        layer.cornerRadius = radius
        layer.borderWidth = borderSize
        layer.borderColor = borderColor1.cgColor
        
        if isSetuped { return }
        isSetuped = true
    }
    
    
    func updateRadius() {
        layer.cornerRadius = 0
    }
    
    func updateBorderWidth() {
        layer.borderWidth = 0
    }
    
    func updateColor() {
        layer.borderColor = UIColor.red.cgColor
    }
}

