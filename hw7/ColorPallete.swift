//
//  ViewController.swift
//  hw7
//
//  Created by Nadya Belozerova on 24.09.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit


enum ColorPallete: Int {
        case red = 0
        case green = 1
        case blue = 2
        case yellow = 4
        case purple = 5
    
    var rgb: UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        case .yellow:
            return UIColor.yellow
        case .purple:
            return UIColor.purple
           }
       }

    var selectedDescription: String {
        switch self {
        case .red:
            return "Выбран красный"
        case .green:
            return "Выбран зеленый"
        case .blue:
            return "Выбран синий"
        case .yellow:
            return ""
        case .purple:
            return ""
           }
       }
   }


