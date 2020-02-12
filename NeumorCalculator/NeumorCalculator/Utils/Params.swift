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
  var WIDTH: CGFloat
  var HEIGHT: CGFloat
  var BACKGROUND_COLOR = UIColor(hex: "f3ecec")
  
  var LABEL_WIDTH: CGFloat
  var LABEL_HEIGHT: CGFloat
  var LABEL_COLOR = UIColor(hex: "f3ecec")
  
  var CORNER_RADIUS: CGFloat = 15
  
  var LEFT_MARGIN: CGFloat
  var TOP_MARGIN: CGFloat
  
  init(bounds: CGRect) {
    WIDTH = bounds.width
    HEIGHT = bounds.height
    LABEL_WIDTH = WIDTH * 0.8
    LABEL_HEIGHT = LABEL_WIDTH / 3.5
    LEFT_MARGIN = WIDTH * 0.1
    TOP_MARGIN = 150
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
