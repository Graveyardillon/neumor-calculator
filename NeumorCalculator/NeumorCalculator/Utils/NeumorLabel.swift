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

        let params = Params.init(bounds: frame)

        let label: UILabel = UILabel(
          frame: CGRect(
            x: params.LABEL_LEFT_MARGIN,
            y: params.LABEL_TOP_MARGIN,
            width: params.LABEL_WIDTH,
            height: params.LABEL_HEIGHT
          )
        )
        label.backgroundColor = params.LABEL_COLOR
        label.layer.cornerRadius = params.LABEL_CORNER_RADIUS
        label.clipsToBounds = true

        self.addSubview(label)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let params = Params()
    private let labelLayer = CALayer(),
                highlightLayer = CALayer(),
                shadowLayer = CALayer()
    
    // TODO: Define a pertinent function name
    func label() {
        [labelLayer, highlightLayer, shadowLayer].forEach {
            $0.masksToBounds = true
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }
    }
    private func putHighlight() {
        
    }
    private func putShadow() {
        
    }
}
