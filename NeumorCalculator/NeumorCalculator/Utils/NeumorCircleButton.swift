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
  
    private let params = Params()
    private let buttonLayer = CAShapeLayer(),
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
        putHighlight()
        putShadow()
        buttonLayer.addSublayer(shadowLayer)
        buttonLayer.addSublayer(highlightLayer)
    }
    private func putHighlight() {
        highlightLayer.fillColor = params.NORMAL_BUTTON_BGCOLOR.cgColor
        highlightLayer.shadowColor = params.BACKGROUND_COLOR.brighter().cgColor
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
    private func putShadow() {
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
