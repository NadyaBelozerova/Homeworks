//
//  Button.swift
//  hw11
//
//  Created by Nadya Belozerova on 09.12.2020.
//

import UIKit

@IBDesignable class Button: UIButton {

    @IBInspectable var radius: CGFloat = 10 {
        didSet { layer.cornerRadius = radius }
    }
    @IBInspectable var borderColor1: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor1.cgColor
        }
    }
    
    @IBInspectable var borderSize: CGFloat = 2 {
        didSet {  layer.borderWidth = borderSize }
    }
}

