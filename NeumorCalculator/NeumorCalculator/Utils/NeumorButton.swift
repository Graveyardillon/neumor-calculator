//
//  NeumorLabel.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import Foundation
import UIKit
 
class NeumorButton: UIButton {
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 15
        self.backgroundColor = UIColor.white
        
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 10
        self.layer.shadowColor = UIColor(red: 0, green: 255, blue: 0, alpha: 1).cgColor
        self.layer.shadowOffset = CGSize(width: 6, height: 6)
        let layer2 = CALayer()
        layer2.shadowOpacity = 0.2
        layer2.shadowRadius = 10
        layer2.shadowColor = UIColor(red: 0, green: 0, blue: 255, alpha: 1).cgColor
        layer2.shadowOffset = CGSize(width: -10, height: -10)
        self.layer.insertSublayer(layer2, at: 1)

    }
}
