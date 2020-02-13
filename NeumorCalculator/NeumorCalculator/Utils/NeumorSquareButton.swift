//
//  NeumorCircleButton.swift
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
  
    private let params = Params()
    private let buttonLayer = CALayer(),
                highlightLayer = CALayer(),
                shadowLayer = CALayer()
        
    func button() {
        setTitle("SquareButton", for: .normal)
        setTitleColor(UIColor.gray, for: .normal)
        [buttonLayer, highlightLayer, shadowLayer].forEach {
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
        highlightLayer.backgroundColor = params.NORMAL_BUTTON_BGCOLOR.cgColor
        highlightLayer.shadowColor = UIColor.white.cgColor
        highlightLayer.cornerRadius = buttonLayer.frame.size.height * 0.15
        highlightLayer.shadowOpacity = 1
        highlightLayer.shadowOffset = CGSize(width: -6, height: -6)
        highlightLayer.shadowRadius = 10
    }
    private func putShadow() {
        shadowLayer.backgroundColor = UIColor.white.cgColor
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.cornerRadius = 20
        shadowLayer.shadowOpacity = 0.25
        shadowLayer.shadowOffset = CGSize(width: 6, height: 6)
        shadowLayer.shadowRadius = 10
    }
}
