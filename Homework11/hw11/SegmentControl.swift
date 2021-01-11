//
//  SegmentControl.swift
//  hw11
//
//  Created by Nadya Belozerova on 11.12.2020.
//

import UIKit

@IBDesignable
class SegmentControl: UIControl {
    
    
    var  isSetuped = false
    
    var buttons = [UIButton]()
    var selector: UIView!
    
    @IBInspectable
    var borderWidth: CGFloat = 2 {
        didSet { layer.borderWidth = borderWidth}
    }
    
    @IBInspectable
    var borderColor: UIColor = UIColor.gray {
        didSet { layer.borderColor = borderColor.cgColor }
    }
    
    
    @IBInspectable
    var titles: String = "" {
        didSet { updateView() }
    }
    
    @IBInspectable
    var selectorColor: UIColor = .gray {
        didSet { updateView() }
    }
    
    
    func updateView() {
        
        buttons.removeAll()
        subviews.forEach { $0.removeFromSuperview()
        }
        
        var buttonTitles = titles.components(separatedBy: ",")
        
        for v in buttonTitles {
            var button = UIButton(type: .system)
            button.setTitle(v, for: .normal)
            buttons.append(button)
            button.addTarget(self, action: #selector(buttonPressed(button:)), for: .touchUpInside)
        }
        
        let selectorWidth = frame.width / CGFloat(buttonTitles.count)
        
        selector = UIView(frame: CGRect(x: 0, y: 0, width: selectorWidth, height: frame.height))
        selector.layer.cornerRadius = frame.height / 2
        selector.backgroundColor = selectorColor
        addSubview(selector)
        
        let buttonStackView = UIStackView(arrangedSubviews: buttons)
        buttonStackView.axis = .horizontal
        buttonStackView.alignment = .fill
        buttonStackView.distribution = .fillProportionally
        addSubview(buttonStackView)
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
        buttonStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        buttonStackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        buttonStackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = frame.height / 2
    }
    
    @objc func buttonPressed(button: UIButton) {
        for (index, v) in buttons.enumerated() {
            
            if v == button {
                var selectorStart = frame.width / CGFloat(buttons.count) * CGFloat(index)
                UIView.animate(withDuration: 0.3, animations: {self.selector.frame.origin.x = selectorStart})
            }
        }
        
        sendActions(for: .valueChanged)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        
        if isSetuped { return }
        isSetuped = true
    }
    
    
}


