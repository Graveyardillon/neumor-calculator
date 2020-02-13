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
    var WIDTH: CGFloat
    var HEIGHT: CGFloat

    var LABEL_WIDTH: CGFloat
    var LABEL_HEIGHT: CGFloat

    init(bounds: CGRect) {
        WIDTH = bounds.width
        HEIGHT = bounds.height
        LABEL_WIDTH = WIDTH * 0.8
        LABEL_HEIGHT = LABEL_WIDTH / 3.5
    }
}
