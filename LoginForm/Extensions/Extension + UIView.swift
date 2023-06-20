//
//  Extension + UIView.swift
//  LoginForm
//
//  Created by Armen on 20.05.2023.
//

import UIKit

extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 240/255,
            green: 100/255,
            blue: 28/255,
            alpha: 1
        )
        let secondaryColor = UIColor(
            red: 107/255,
            green: 148/255,
            blue: 130/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
