//
//  ViewController.swift
//  hw7-5
//
//  Created by Nadya Belozerova on 12.10.2020.
//  Copyright © 2020 Nadya Belozerova. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    lazy var stackViewButtons: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.axis = .horizontal
        stackV.spacing = 10
        stackV.distribution = .fillEqually
        
        return stackV
    }()
    
    lazy var stackViewChildVC: UIStackView = {
        let stackV2 = UIStackView(arrangedSubviews: [])
        stackV2.translatesAutoresizingMaskIntoConstraints = false
        stackV2.axis = .vertical
        stackV2.spacing = 0
        stackV2.distribution = .fillEqually
        
        return stackV2
    }()
    
    private var childs: [UIViewController] = []
    
    private var defaultVC = DefaultVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackViewChildVC)
        view.addSubview(stackViewButtons)
        
        
        
        NSLayoutConstraint.activate([
            
            stackViewChildVC.topAnchor.constraint(equalTo: stackViewButtons.bottomAnchor),
            stackViewChildVC.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackViewChildVC.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackViewChildVC.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            
            stackViewButtons.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackViewButtons.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackViewButtons.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackViewButtons.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
        ])
        
    }
    
    func addVC(_ vc: UIViewController, buttonTitle: String) {
        assert(childs.count < 6, "Too many child ViewControllers: only 6 allowed")
        
        childs.append(vc)
        
        let button1 = UIButton()
        button1.backgroundColor = .gray
        button1.setTitle(buttonTitle, for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.setTitleColor(.red, for: .selected)
        button1.addTarget(self, action: #selector(showHideContentVC), for: .touchUpInside)
        stackViewButtons.addArrangedSubview(button1)
        
    }
    
    func setPlaceholder(_ vc: UIViewController) {
        addChild(defaultVC)
        view.addSubview(defaultVC.view)
        
        
    }
    
    @objc private func showHideContentVC(_ sender: UIButton) {
        
        sender.isSelected.toggle()
                let index = stackViewButtons.arrangedSubviews.firstIndex(of: sender) ?? 0
                let childVC = childs[index]
        
                if sender.isSelected {
                    showChildVC(childVC)
                } else {
                    hideChildVC(childVC)
                }
        
        if stackViewChildVC.arrangedSubviews.count == 0 {
            showChildVC(defaultVC)
        } else {
            hideChildVC(defaultVC)
        }
    }

    private func showChildVC(_ childVC: UIViewController) {
        self.addChild(childVC)
        self.stackViewChildVC.addArrangedSubview(childVC.view)
        childVC.didMove(toParent: self)
        
    }
    
    private func hideChildVC(_ childVC: UIViewController) {
        childVC.willMove(toParent: self)
        childVC.view.removeFromSuperview()
        childVC.removeFromParent()
        
    }
}


