//
//  NeumorTest.swift
//  NeumorCalculator
//
//  Created by takuma ozawa on 2020/02/13.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class NeumorTest: UIButton {
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
        setTitle("Pushed!", for: .normal)
//        [buttonLayer, highlightLayer, shadowLayer] .forEach {
//            $0.masksToBounds = false
//            $0.frame = layer.bounds
//            layer.insertSublayer($0, at: 0)
//        }
        layer.backgroundColor = params.NORMAL_BUTTON_BGCOLOR.cgColor
        layer.cornerRadius = 20
        
        let VirticalgradLayer = CAGradientLayer()
        VirticalgradLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        VirticalgradLayer.colors = [
            params.BACKGROUND_COLOR.darker().cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.BACKGROUND_COLOR.brighter().cgColor
        ]
        VirticalgradLayer.locations = [
            0,
            0.15,
            0.85,
            1
        ]
        VirticalgradLayer.cornerRadius = 20
        VirticalgradLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 180 * 270 , 0, 0, 1)
        
        
        
        layer.addSublayer(VirticalgradLayer)
    }
}
