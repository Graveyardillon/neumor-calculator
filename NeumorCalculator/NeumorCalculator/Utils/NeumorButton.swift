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

    let buttonLayer = CALayer(), highlightLayer = CALayer(), shadowLayer = CALayer()
    let testLayer = CAShapeLayer(), test2Layer = CAShapeLayer()
    func button() {
        setTitle("BUTTON" , for: .normal)
        setTitleColor(UIColor.gray, for: .normal)
        buttonLayer.backgroundColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        buttonLayer.cornerRadius = layer.frame.size.height * 0.15
        [buttonLayer, highlightLayer, shadowLayer].forEach {
            $0.masksToBounds = false
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }
        highlightLayer.createShadow(color: UIColor.white, alpha: 1, x: -3, y: -3, blur: 10, spread: -9)
        shadowLayer.createShadow(color: UIColor.black, alpha: 1, x: 3, y: 3, blur: 10, spread: 1)

    }
}

extension CALayer {
    func createShadow(
        color: UIColor,
        alpha: Float,
        x: CGFloat,
        y: CGFloat,
        blur: CGFloat,
        spread: CGFloat)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur
            if spread == 0 {
                shadowPath = nil
            } else {
                let dx = spread
                let rect = bounds.insetBy(dx: dx, dy: dx)
                shadowPath = UIBezierPath(rect: rect).cgPath
            }
        masksToBounds = false
    }
}


