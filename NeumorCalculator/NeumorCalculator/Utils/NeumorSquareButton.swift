//
//  NeumorSquareButton.swift
//  NeumorCalculator
//
//  Created by takuma ozawa on 2020/02/13.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class NeumorSquareButton: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
        button()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        button()
    }
    
    let buttonLayer = CALayer(),
        highlightLayer = CAShapeLayer(),
        shadowLayer = CAShapeLayer(),
        topLayer = CALayer()
    func button() {
        setTitle("SquareButton", for: .normal)
        setTitleColor(UIColor.gray, for: .normal)
        buttonLayer.backgroundColor = UIColor.red.cgColor
        
        [buttonLayer, highlightLayer, shadowLayer, topLayer] .forEach {
            $0.masksToBounds = false
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }
        topLayer.backgroundColor = UIColor.white.cgColor
        topLayer.cornerRadius = 20
        topLayer.opacity = 0.8
        
        highlight()
        shadow()
        buttonLayer.addSublayer(highlightLayer)
        buttonLayer.addSublayer(shadowLayer)
        buttonLayer.addSublayer(topLayer)
    }
    private func highlight() {
        let path = TopTrianglePath()
        highlightLayer.path = path.cgPath
        highlightLayer.fillColor = UIColor.cyan.cgColor
        highlightLayer.shadowColor = UIColor.orange.cgColor
        highlightLayer.shadowOffset = CGSize(width: 0, height: 0)
        highlightLayer.shadowOpacity = 1.0
        highlightLayer.shadowRadius = 10
        
    }
    private func shadow() {
        let path = BottomTrianglePath()
        shadowLayer.fillColor = UIColor.orange.cgColor
        shadowLayer.path = path.cgPath
        shadowLayer.shadowColor = UIColor.cyan.cgColor
        shadowLayer.shadowOffset = CGSize(width: 0, height: 0)
        shadowLayer.shadowOpacity = 1.0
        shadowLayer.shadowRadius = 10
    }
    private func BottomTrianglePath() -> UIBezierPath {
        let rect = buttonLayer.frame
        let path = UIBezierPath()
        path.move(to: CGPoint(x:rect.width, y:0))
        path.addLine(to: CGPoint(x:rect.width, y:rect.height))
        path.addLine(to: CGPoint(x:0, y:rect.height))
        path.close()
        return path
    }
    private func TopTrianglePath() -> UIBezierPath {
        let rect = buttonLayer.frame
        let path = UIBezierPath()
        path.move(to: CGPoint(x:rect.width, y:0))
        path.addLine(to: CGPoint(x:0, y:0))
        path.addLine(to: CGPoint(x:0, y:rect.height))
        path.close()
        return path
    }
}
