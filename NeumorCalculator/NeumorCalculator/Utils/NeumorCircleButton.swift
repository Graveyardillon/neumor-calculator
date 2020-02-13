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
  
    let params = Params()
    
    let buttonLayer = CAShapeLayer(),
        highlightLayer = CAShapeLayer(),
        shadowLayer = CAShapeLayer()
        
    func button() {
        setTitle("●", for: .normal)
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
        highlightLayer.fillColor = params.NORMAL_BUTTON_BGCOLOR.cgColor
        highlightLayer.shadowColor = UIColor.white.cgColor
        highlightLayer.path = UIBezierPath.init(ovalIn: CGRect.init(
            x: 0,
            y: 0,
            width: self.frame.size.width,
            height: self.frame.size.height
        )).cgPath
        highlightLayer.shadowOpacity = params.HIGHLIGHT_OPACITY
        highlightLayer.shadowOffset = params.HIGHLIGHT_OFFSET_6
        highlightLayer.shadowRadius = params.SQUARE_SHADOW_RADIUS
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
        shadowLayer.shadowOpacity = params.SHADOW_OPACITY
        shadowLayer.shadowOffset = params.SHADOW_OFFSET_6
        shadowLayer.shadowRadius = params.SQUARE_SHADOW_RADIUS
    }
}
