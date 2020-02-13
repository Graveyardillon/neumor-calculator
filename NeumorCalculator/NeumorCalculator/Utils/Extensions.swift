//
//  Extensions.swift
//  NeumorCalculator
//
//  Created by takuma ozawa on 2020/02/13.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    func brighter() -> UIColor { // ハイライト用 背景の色を明るくした色を返す 背景色似合わせて調節
        var hue: CGFloat = 0,
            saturation: CGFloat = 0,
            brightness: CGFloat = 0,
            alpha: CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation * 0.75, brightness: brightness * 1.1, alpha: alpha)
        } else {
            return self
        }
    }
}
