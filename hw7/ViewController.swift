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
        case green2 = 3
        case yellow = 4
        case purple = 5
        case green3 = 6
        case yellow2 = 7
        case purple2 = 8
    
    var rgb: UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        case .green2:
            return UIColor.green
        case .yellow:
            return UIColor.yellow
        case .purple:
            return UIColor.purple
        case .green3:
            return UIColor.green
        case .yellow2:
            return UIColor.yellow
        case .purple2:
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
        case .green2:
            return ""
        case .yellow:
            return ""
        case .purple:
            return ""
        case .green3:
            return ""
        case .yellow2:
            return ""
        case .purple2:
            return ""
           }
       }
   }

class ViewController: UIViewController {

}

