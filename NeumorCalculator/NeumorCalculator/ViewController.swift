//
//  ViewController.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func UIButtonTest(_ sender: Any) {
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let label: NeumorLabel = NeumorLabel(frame: UIScreen.main.bounds)
    
    self.view.addSubview(label)
  }


}

