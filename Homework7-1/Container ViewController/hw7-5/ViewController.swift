//
//  ViewController.swift
//  hw7-5
//
//  Created by Nadya Belozerova on 12.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    
    lazy var stackViewButtons: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [button1, button2, button3])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.axis = .horizontal
        stackV.spacing = 10
        stackV.distribution = .fillEqually
        
        return stackV
    }()
    
    var firstVC = FirstChildVC()
    var secondVC = SecondChildVC()
    var thirdVC = ThirdChildVC()
    
    lazy var stackViewChildVC: UIStackView = {
        let stackV2 = UIStackView(arrangedSubviews: [firstVC.view, secondVC.view, thirdVC.view])
        stackV2.translatesAutoresizingMaskIntoConstraints = false
        stackV2.axis = .vertical
        stackV2.spacing = 0
        stackV2.distribution = .fillEqually
        
        return stackV2
    }()
    
    private var childs: [UIViewController] = [FirstChildVC(), SecondChildVC(), ThirdChildVC()]
    
    private var defaultVC = DefaultVC()
    
    func addVC(_ vc: UIViewController, buttonTitle: String) {
        assert(childs.count < 6, "Too many child ViewControllers: only 6 allowed")
        
        button1.backgroundColor = .gray
        button1.setTitle("One", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.addTarget(self, action: #selector(showHideContentVC), for: .touchUpInside)
        
        button2.backgroundColor = .gray
        button2.setTitle("Two", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.addTarget(self, action: #selector(showHideContentVC), for: .touchUpInside)
        
        button3.backgroundColor = .gray
        button3.setTitle("Three", for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button3.addTarget(self, action: #selector(showHideContentVC), for: .touchUpInside)
        
        view.addSubview(stackViewChildVC)
        view.addSubview(stackViewButtons)
        
        NSLayoutConstraint.activate([
            
            stackViewChildVC.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackViewChildVC.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackViewChildVC.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackViewChildVC.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1),
            stackViewChildVC.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1)
        ])
        
        NSLayoutConstraint.activate([
            
            stackViewButtons.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackViewButtons.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackViewButtons.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackViewButtons.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
        ])
    }
    
    
    func setPlaceholder(_ vc: UIViewController) {
        addChild(defaultVC)
        view.addSubview(defaultVC.view)
    }
    
    @objc private func showHideContentVC(_ sender: UIButton) {
        if sender == button1 {
            if button1.backgroundColor == UIColor.blue {
                button1.backgroundColor = UIColor.gray
                firstVC.view.isHidden = false
            } else if button1.backgroundColor == UIColor.gray {
                button1.backgroundColor = UIColor.blue
                firstVC.view.isHidden = true
            }
        } else if sender == button2 {
            if button2.backgroundColor == UIColor.blue {
                button2.backgroundColor = UIColor.gray
                secondVC.view.isHidden = false
            } else if button2.backgroundColor == UIColor.gray {
                button2.backgroundColor = UIColor.blue
                secondVC.view.isHidden = true
            }
        } else if sender == button3 {
            if button3.backgroundColor == UIColor.blue {
                button3.backgroundColor = UIColor.gray
                thirdVC.view.isHidden = false
            }
            else if button3.backgroundColor == UIColor.gray {
                button3.backgroundColor = UIColor.blue
                thirdVC.view.isHidden = true
            }
            
        if firstVC.view.isHidden == true && secondVC.view.isHidden == true && thirdVC.view.isHidden == true {
                setPlaceholder(defaultVC)
            }
        }
    }
    
    private func showChildVC(_ childVC: UIViewController) {
        // Функция для добавления контроллера в иерархию и его показа
    }
    
    private func hideChildVC(_ childVC: UIViewController) {
        // Функция для удаления контроллера из иерархии и его скрытия
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


