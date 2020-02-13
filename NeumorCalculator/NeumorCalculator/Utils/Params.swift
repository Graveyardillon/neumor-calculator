//
//  Params.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

class Params {
    var WIDTH: CGFloat?
    var HEIGHT: CGFloat?
    var BACKGROUND_COLOR = UIColor(hex: "f3ecec")

    var LABEL_WIDTH: CGFloat
    var LABEL_HEIGHT: CGFloat
    var LABEL_COLOR = UIColor(hex: "f3ecec")
    var LABEL_LEFT_MARGIN: CGFloat
    var LABEL_TOP_MARGIN: CGFloat
    var LABEL_CORNER_RADIUS: CGFloat = 15

    var NORMAL_BUTTON_BGCOLOR = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1)

    var HIGHLIGHT_OPACITY: Float = 1
    var SHADOW_OPACITY: Float = 0.25
    var HIGHLIGHT_OFFSET_6: CGSize = CGSize(width: -6, height: -6)
    var SHADOW_OFFSET_6: CGSize = CGSize(width: 6, height: 6)
    
    var SQUARE_SHADOW_RADIUS: CGFloat = 10
  
    init(bounds: CGRect) {
        self.WIDTH = bounds.width
        self.HEIGHT = bounds.height
        self.LABEL_WIDTH = (WIDTH ?? 0) * 0.8
        self.LABEL_HEIGHT = LABEL_WIDTH / 3.5
        self.LABEL_LEFT_MARGIN = (WIDTH ?? 0) * 0.1
        self.LABEL_TOP_MARGIN = 150
    }
        init() {
        self.WIDTH = nil
        self.HEIGHT = nil
        self.LABEL_WIDTH = 0
        self.LABEL_HEIGHT = 0
        self.LABEL_LEFT_MARGIN = 0
        self.LABEL_TOP_MARGIN = 0
    }
}

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
}
