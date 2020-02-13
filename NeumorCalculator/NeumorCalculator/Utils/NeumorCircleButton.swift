//
//  NeumorCircleButton.swift
//  NeumorCalculator
//
//  Created by takuma ozawa on 2020/02/13.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class NeumorCircleButton: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
        button()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        button()
    }
    
    let buttonLayer = CAShapeLayer(),
        highlightLayer = CAShapeLayer(),
        shadowLayer = CAShapeLayer()
        
    func button() {
        setTitle("CircleButton", for: .normal)
        setTitleColor(UIColor.gray, for: .normal)
        [buttonLayer, highlightLayer, shadowLayer] .forEach {
            $0.masksToBounds = false
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }
        highlight()
        shadow()
        buttonLayer.addSublayer(shadowLayer)
        buttonLayer.addSublayer(highlightLayer)
    }
    private func highlight() {
        highlightLayer.fillColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        highlightLayer.shadowColor = UIColor.white.cgColor
        highlightLayer.path = UIBezierPath.init(ovalIn: CGRect.init(
            x: 0,
            y: 0,
            width: self.frame.size.width,
            height: self.frame.size.height
        )).cgPath
        highlightLayer.shadowOpacity = 1
        highlightLayer.shadowOffset = CGSize(width: -6, height: -6)
        highlightLayer.shadowRadius = 10
    }
    private func shadow() {
        shadowLayer.fillColor = UIColor.white.cgColor
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.path = UIBezierPath.init(ovalIn: CGRect.init(
            x: 0,
            y: 0,
            width: self.frame.size.width,
            height: self.frame.size.height
        )).cgPath
        shadowLayer.shadowOpacity = 0.25
        shadowLayer.shadowOffset = CGSize(width: 6, height: 6)
        shadowLayer.shadowRadius = 10
    }
}
