//
//  ViewController.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var button: NeumorSquareButton!
    @IBAction func buttonPush(_ sender: NeumorSquareButton) {
        sender.touchDownEffect()
    }
    @IBAction func buttonUp(_ sender: NeumorSquareButton) {
        sender.button()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let params = Params()

        self.view.backgroundColor = params.BACKGROUND_COLOR
        let label: NeumorLabel = NeumorLabel(frame: UIScreen.main.bounds)

        self.view.addSubview(label)
    }
}

