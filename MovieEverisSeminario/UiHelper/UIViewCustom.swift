//
//  UIviewCustom.swift
//  RRHH-MVVM
//
//  Created by user on 2/8/19.
//  Copyright © 2019 vector. All rights reserved.
//

import UIKit

@IBDesignable class UIViewCustom : UIView {
    
    @IBInspectable var atCircle: Bool = false {
        didSet {
            if atCircle {
                layer.cornerRadius = bounds.size.width / 2
            }
        }
    }
    
    @IBInspectable var cornerRadius: Double {
        get {
            return Double(self.layer.cornerRadius)
        }
        set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }
    
    @IBInspectable var borderWidth: Double {
        get {
            return Double(self.layer.borderWidth)
        }
        set {
            self.layer.borderWidth = CGFloat(newValue)
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable var shadowRadius: Double {
        get {
            return Double(self.layer.shadowRadius)
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
        }
    }
    @IBInspectable var rotation: Double = 0 {
        didSet {
            rotateButton(rotation: rotation)
        }
    }

    private let animationDuration: TimeInterval = 1.0
    private let deleyTime: TimeInterval = 0
    private let springDamping: CGFloat = 0.25
    private let lowSpringDamping: CGFloat = 0.50
    private let springVelocity: CGFloat = 8.00
}

extension UIViewCustom {
    //MARK:- Default Animation here
    public func AnimateView(){
        provideAnimation(animationDuration: animationDuration, deleyTime: deleyTime, springDamping: springDamping, springVelocity: springVelocity)
    }
    
    //MARK:- Custom Animation here
    public func AnimateViewWithSpringDuration(_ name:UIView, animationDuration:TimeInterval, springDamping:CGFloat, springVelocity:CGFloat){
        provideAnimation(animationDuration: animationDuration, deleyTime: deleyTime, springDamping: springDamping, springVelocity: springVelocity)
    }
    
    //MARK:- Low Damping Custom Animation here
    public func AnimateViewWithSpringDurationWithLowDamping(_ name:UIView, animationDuration:TimeInterval, springVelocity:CGFloat){
        provideAnimation(animationDuration: animationDuration, deleyTime: deleyTime, springDamping: lowSpringDamping, springVelocity: springVelocity)
    }
    
    private func provideAnimation(animationDuration:TimeInterval, deleyTime:TimeInterval, springDamping:CGFloat, springVelocity:CGFloat){
        self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: animationDuration,
                       delay: deleyTime,
                       usingSpringWithDamping: springDamping,
                       initialSpringVelocity: springVelocity,
                       options: .allowUserInteraction,
                       animations: {
                        self.transform = CGAffineTransform.identity
        })
    }
    
    
    func rotateButton(rotation: Double)  {
        self.transform = CGAffineTransform(rotationAngle: CGFloat(.pi*rotation/180))
    }
}



//extension UIView {
//    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
//        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        layer.mask = mask
//    }
//}
