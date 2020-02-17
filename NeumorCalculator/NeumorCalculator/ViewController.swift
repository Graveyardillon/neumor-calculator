//
//  ViewController.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var performingMath = false;
    
    

    @IBOutlet weak var label: NeumorLabel!
    @IBAction func numbers(_ sender: NeumorSquareButton) {
        
        if performingMath == true {
            label.putUILabel(text: String(sender.tag))
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            performingMath = false
            print(numberOnScreen)
        } else {

            label.text = label.text! + String(sender.tag)
            numberOnScreen = Double(label.text!)!
            label.putUILabel(text: label.text!)
    
        }
    }

    
  
    @IBAction func ButtonPush(_ sender: NeumorSquareButton) {
        sender.buttonPush()
    }
    @IBAction func ButtonUp(_ sender: NeumorSquareButton) {
        sender.button()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let params = Params()

        self.view.backgroundColor = params.BACKGROUND_COLOR
    }
}

