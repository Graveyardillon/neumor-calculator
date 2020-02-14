//
//  NeumorTest.swift
//  NeumorCalculator
//
//  Created by takuma ozawa on 2020/02/13.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class NeumorButtonPushed: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
        button()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        button()
    }
    private let params = Params()

    func button() {
        setTitle("□", for: .normal)
        setTitleColor(UIColor.gray, for: .normal)

        let frame = CGRect(x: 0, y: 0, width: layer.frame.size.width, height: layer.frame.size.height)
        let gradColors = [
            params.BACKGROUND_COLOR.darker().cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.NORMAL_BUTTON_BGCOLOR.cgColor,
            params.BACKGROUND_COLOR.brighter().cgColor
        ]
        let gradLocations = [0, 0.15, 0.85, 1]
        let shadowOpacity: Float = 0.5
        let cornerRadius: CGFloat = 20
        
        let virticalGradLayer = CAGradientLayer()
            virticalGradLayer.opacity = shadowOpacity
            virticalGradLayer.frame = frame
            virticalGradLayer.colors = gradColors
            virticalGradLayer.locations = gradLocations as [NSNumber]
            virticalGradLayer.cornerRadius = cornerRadius
        let horizonGradLayer = CAGradientLayer()
            horizonGradLayer.opacity = shadowOpacity
            horizonGradLayer.frame = frame
            horizonGradLayer.colors = gradColors
            horizonGradLayer.locations = gradLocations as [NSNumber]
            horizonGradLayer.cornerRadius = cornerRadius
            horizonGradLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 180 * 270 , 0, 0, 1)
        
        layer.addSublayer(horizonGradLayer)
        layer.addSublayer(virticalGradLayer)
    }
}
