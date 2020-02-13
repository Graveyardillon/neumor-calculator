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
    private let shadowLayer = CALayer()
    
    private func label() {
        let path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: 5.0 ))
        shadowLayer.frame = self.bounds
        shadowLayer.masksToBounds = true
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOffset = CGSize(width: 2.5, height: 2.5)
        shadowLayer.shadowOpacity = params.SHADOW_OPACITY
        shadowLayer.shadowPath = path.cgPath
        self.layer.addSublayer(shadowLayer)
    }
}
