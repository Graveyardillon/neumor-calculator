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
  
  var LABEL_WIDTH: CGFloat
  var LABEL_HEIGHT: CGFloat
  var LABEL_COLOR: UIColor = .red
  
  var CORNER_RADIUS: CGFloat = 30
  
  var LEFT_MARGIN: CGFloat
  var TOP_MARGIN: CGFloat
  
  init(bounds: CGRect) {
    WIDTH = bounds.width
    HEIGHT = bounds.height
    LABEL_WIDTH = WIDTH * 0.8
    LABEL_HEIGHT = LABEL_WIDTH / 3.5
    LEFT_MARGIN = WIDTH * 0.1
    TOP_MARGIN = 100
  }
}
