//
//  NeumorLabel.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class NeumorButton: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
        button()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        button()
    }

    let buttonLayer = CALayer(), layer2 = CALayer(), layer3 = CALayer()
    
    func button() {
//        shadow()
//        highlight()

        buttonLayer.backgroundColor = UIColor(red: 242, green: 242, blue: 242, alpha: 1).cgColor
        buttonLayer.cornerRadius = 15
        [buttonLayer, layer2, layer3].forEach {
            $0.masksToBounds = false
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }
        layer2.applySketchShadow(color: UIColor.red, alpha: 0.5, x: 6, y: 6, blur: 20, spread: -10)
        layer3.applySketchShadow(color: UIColor.green, alpha: 0.5, x: -6, y: -6, blur: 20, spread: -9)
    }
    
    private func shadow() {
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 6, height: 6)
        layer.shadowColor = UIColor.black.cgColor
    }
    private func highlight() {
        layer.shadowOpacity = 1
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: -6, height: -6)
        layer.shadowColor = UIColor.red.cgColor
    }
}


extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
        masksToBounds = false
    }
}
