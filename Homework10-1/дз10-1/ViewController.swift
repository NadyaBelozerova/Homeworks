//
//  ViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 27.12.2020.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    lazy var pinnedView: UIView = {
        let pinnedView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        pinnedView.backgroundColor = .yellow
        pinnedView.clipsToBounds = true
        
        return pinnedView
    }()
    
    var imageHeightConstraint: NSLayoutConstraint!
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentSize = CGSize(width: 1500, height: 2000)
        view.backgroundColor = UIColor.lightGray

        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.scrollView)
        self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
        self.view.addSubview(self.pinnedView)
        self.pinnedView.translatesAutoresizingMaskIntoConstraints = false
        self.pinnedView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.pinnedView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.pinnedView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        
        self.imageHeightConstraint = self.pinnedView.heightAnchor.constraint(equalToConstant: 200)
        self.imageHeightConstraint.isActive = true

    }
}

