//
//  ClockView.swift
//  hw11
//
//  Created by Nadya Belozerova on 09.12.2020.
//


import UIKit

@IBDesignable class ClockView: UIView {
    
    
    var markerSize: CGFloat = 4
    var markerLength: CGFloat = 10
    var markerColor = UIColor.black
    
    var hours: CGFloat = 2 {
        didSet { updateHours() }
    }
    
    var minutes: CGFloat = 10 {
        didSet { updateHours() }
    }
    
    var seconds: CGFloat = 5 {
        didSet { updateHours() }
    }
    
    @IBInspectable var hourLineSize: CGFloat = 6 {
        didSet { updateHourLine() }
    }
    
    @IBInspectable var minuteLineSize: CGFloat = 3 {
        didSet { updateHourLine() }
    }
    
    @IBInspectable var secondLineSize: CGFloat = 3 {
        didSet { updateHourLine() }
    }
    
    @IBInspectable var hourLineOffset: CGFloat = 30 {
        didSet { updateHourLine() }
    }
    
    @IBInspectable var minuteLineOffset: CGFloat = 50 {
        didSet { updateHourLine() }
    }
    
    @IBInspectable var secondLineOffset: CGFloat = 10 {
        didSet { updateHourLine() }
    }
    
    @IBInspectable var houreLineColor: UIColor = UIColor.black {
        didSet { hourLine.backgroundColor = houreLineColor }
    }
    
    @IBInspectable var minuteLineColor: UIColor = UIColor.green {
        didSet { minuteLine.backgroundColor = minuteLineColor }
    }
    
    @IBInspectable var secondLineColor: UIColor = UIColor.black {
        didSet { secondLine.backgroundColor = secondLineColor }
    }
    
    var roundedViewColor = UIColor.black
    
    private let topMarker = UIView()
    private let leftMarker = UIView()
    private let rightMarker = UIView()
    private let bottomMarker = UIView()
    
    private let hourLine = UIView()
    private let minuteLine = UIView()
    private let secondLine = UIView()
    private let roundedView = UIView()
    
    
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        hourLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        minuteLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        secondLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        
        let w = frame.size.width
        let h = frame.size.height
        
        
        
        roundedView.frame = CGRect(x: w / 2 - 8, y: h / 2 - 8, width: 16, height: 16)
        
        
        updateHourLine()
        updateHours()
        
        topMarker.frame = CGRect(x: w / 2 - markerSize / 2, y: 0, width: markerSize, height: markerLength)
        leftMarker.frame = CGRect(x: 0, y: h / 2 - markerSize / 2, width: markerLength, height: markerSize)
        rightMarker.frame = CGRect(x: w - markerLength, y: h / 2 - markerSize / 2, width: markerLength, height: markerSize)
        bottomMarker.frame = CGRect(x: w / 2 - markerSize / 2, y: h - markerLength, width: markerSize, height: markerLength)
        
        
        
        for v in [topMarker, leftMarker, rightMarker, bottomMarker] {
            v.backgroundColor = markerColor
        }
        
        layer.cornerRadius = frame.size.width / 2

        
        for v in [topMarker, leftMarker, rightMarker, bottomMarker, hourLine, roundedView, minuteLine, secondLine] {
            addSubview(v)
        }
        
    }
    
    func updateHourLine() {
        let w = frame.size.width
        let h = frame.size.height
        hourLine.frame = CGRect(x: w / 2 - hourLineSize / 2, y: hourLineOffset, width: hourLineSize, height: h / 2 - hourLineOffset)
        minuteLine.frame = CGRect(x: w / 2 - minuteLineSize / 2, y: minuteLineOffset, width: minuteLineSize, height: h / 2 - minuteLineOffset)
        
        secondLine.frame = CGRect(x: w / 2 - secondLineSize / 2, y: secondLineOffset, width: secondLineSize, height: h / 2 - secondLineOffset)
    }
    
    
    func updateHours() {
        let angle = CGFloat.pi * 2 * (hours / CGFloat(12))
        hourLine.transform = CGAffineTransform(rotationAngle: angle)
        
        let angle1 = CGFloat.pi * 2 * (minutes / CGFloat(12))
        minuteLine.transform = CGAffineTransform(rotationAngle: angle1)
        
        let angle2 = CGFloat.pi * 2 * (seconds / CGFloat(12))
        secondLine.transform = CGAffineTransform(rotationAngle: angle2)
    }
    
    
}
