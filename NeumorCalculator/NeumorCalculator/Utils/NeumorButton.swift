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
        let path = createTrianglePath()
        testLayer.fillColor = UIColor.red.cgColor
        testLayer.path = path.cgPath
//        testLayer.path = UIBezierPath.init(roundedRect: CGRect.init(x: 20, y: 20, width: 60, height: 60), cornerRadius: 8).cgPath
        test2Layer.fillColor = UIColor.cyan.cgColor
        test2Layer.path = UIBezierPath.init(roundedRect: CGRect.init(x: -20, y: -20, width: 60, height: 60), cornerRadius: 8).cgPath
        test2Layer.shadowColor = UIColor.black.cgColor
        test2Layer.shadowOffset = CGSize(width: -2, height: -2)
        test2Layer.shadowOpacity = 1.0
        test2Layer.shadowRadius = 3
        test2Layer.shouldRasterize = true
        test2Layer.rasterizationScale = UIScreen.main.scale

        
        buttonLayer.addSublayer(testLayer)
        buttonLayer.addSublayer(test2Layer)
        
        
        
        
        buttonLayer.backgroundColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        buttonLayer.cornerRadius = layer.frame.size.height * 0.15
        [buttonLayer, highlightLayer, shadowLayer].forEach {
            $0.masksToBounds = false
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }
        highlightLayer.applySketchShadow(color: UIColor.white, alpha: 1, x: -3, y: -3, blur: 10, spread: -9)
        shadowLayer.applySketchShadow(color: UIColor.black, alpha: 1, x: 3, y: 3, blur: 10, spread: 1)

    }
    private func createTrianglePath() -> UIBezierPath {
        let rect = self.frame
        let path = UIBezierPath()
        path.move(to: CGPoint(x:rect.width, y:0))
        path.addLine(to: CGPoint(x:rect.width, y:rect.height))
        path.addLine(to: CGPoint(x:0, y:rect.height))
        path.close()
        return path
    }
}

extension CALayer {
    func applySketchShadow(
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


