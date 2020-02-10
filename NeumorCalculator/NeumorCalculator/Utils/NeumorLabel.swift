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
    self.bounds = frame
    
    self.backgroundColor = .red
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
