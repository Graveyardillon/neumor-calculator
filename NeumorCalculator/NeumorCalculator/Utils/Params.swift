//
//  Params.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

let bgColor = #colorLiteral(red: 0.9025, green: 0.9194645762, blue: 0.95, alpha: 1)

class Params {
    open var WIDTH: CGFloat?
    open var HEIGHT: CGFloat?
    open var BACKGROUND_COLOR = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1)

    open var LABEL_WIDTH: CGFloat
    open var LABEL_HEIGHT: CGFloat
    open var LABEL_COLOR = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1)
    open var LABEL_LEFT_MARGIN: CGFloat
    open var LABEL_TOP_MARGIN: CGFloat
    open var LABEL_CORNER_RADIUS: CGFloat = 15

    open var NORMAL_BUTTON_BGCOLOR = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1)
    open var RED_BUTTON_BGCOLOR = UIColor(hex: "f3ecec")

    open var HIGHLIGHT_OPACITY: Float = 1
    open var SHADOW_OPACITY: Float = 0.25
    open var HIGHLIGHT_OFFSET_6: CGSize = CGSize(width: -6, height: -6)
    open var SHADOW_OFFSET_6: CGSize = CGSize(width: 6, height: 6)
    
    open var SQUARE_SHADOW_RADIUS: CGFloat = 10
  
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
