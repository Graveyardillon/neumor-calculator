//
//  NeumorLabel.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class NeumorLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        label()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        label()
    }
    
    private let params = Params()
    
    private let topAndBottomLayer = CAGradientLayer(),
                leftAndRightLayer = CAGradientLayer(),
                calcResultLabel = UILabel()
    
    private func label() {
//        putTopAndBottom()
//        putLeftAndRight()
        addSubview(calcResultLabel)
    }
    private func putTopAndBottom() {
        topAndBottomLayer.cornerRadius = params.LABEL_CORNER_RADIUS
        topAndBottomLayer.frame = self.bounds
        topAndBottomLayer.colors = [
            params.BACKGROUND_COLOR.darker().cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.BACKGROUND_COLOR.brighter().cgColor
        ]
        topAndBottomLayer.locations = [
            0,
            0.15,
            0.85,
            1
        ]
        topAndBottomLayer.opacity = 1
        layer.insertSublayer(topAndBottomLayer, at: 0)
    }
    private func putLeftAndRight() {
        leftAndRightLayer.cornerRadius = params.LABEL_CORNER_RADIUS
        leftAndRightLayer.frame = self.bounds
        leftAndRightLayer.colors = [
            params.BACKGROUND_COLOR.darker().cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.BACKGROUND_COLOR.brighter().cgColor
        ]
        leftAndRightLayer.locations = [
            0,
            0.05,
            0.95,
            1
        ]
        leftAndRightLayer.startPoint = CGPoint(x: 0, y: 0)
        leftAndRightLayer.endPoint = CGPoint(x: 1, y: 0)
        leftAndRightLayer.opacity = 0.5
        layer.insertSublayer(leftAndRightLayer, at: 1)
    }
    func putUILabel(text: String) {
        calcResultLabel.text = text
        calcResultLabel.frame = CGRect(
            x: 15,
            y: 0,
            width: self.bounds.width * 0.9,
            height: self.bounds.height
        )
        calcResultLabel.textAlignment = .right
        calcResultLabel.font = UIFont(name: "Roboto-Bold", size: 30)
    }
}
