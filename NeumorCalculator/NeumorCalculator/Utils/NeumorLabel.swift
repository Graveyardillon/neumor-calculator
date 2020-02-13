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
    
    private let shadowLayer = CAGradientLayer(),
                highlightLayer = CAGradientLayer()
    
    private func label() {
        
    }
    private func putShadow() {
        shadowLayer.cornerRadius = params.LABEL_CORNER_RADIUS
        shadowLayer.frame = self.bounds
        shadowLayer.colors = [
        ]
    }
    private func putHighlight() {
        
    }
}
