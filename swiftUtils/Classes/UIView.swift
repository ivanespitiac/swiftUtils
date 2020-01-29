//
//  UIView.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 24/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    func visible() {
        self.isHidden = false
    }
    
    func invisible() {
        self.isHidden = true
    }
    
    func interactionEnable() {
        self.isUserInteractionEnabled = true
    }
    
    func interactionDisable() {
        self.isUserInteractionEnabled = false
    }
    
    func setCornerRadius(_ corners: UIRectCorner = UIRectCorner.allCorners, radius: CGFloat) {        
        self.layoutIfNeeded()
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    func setCircle() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
    }
    
    func setBorder(with: CGFloat, color: UIColor = UIColor.black) {
        self.layer.borderWidth = with
        self.layer.borderColor = color.cgColor
    }
    
}
