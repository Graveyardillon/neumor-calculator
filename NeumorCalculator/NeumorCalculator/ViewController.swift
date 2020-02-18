//
//  ViewController.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var currentOperation = 0
    var performingMath = false
    
    

    @IBOutlet weak var label: NeumorLabel!
    @IBAction func numbers(_ sender: NeumorSquareButton) {
        
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            label.putUILabel(text: label.text!)
            performingMath = false
        } else {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            label.putUILabel(text: label.text!)
        }
    }
    @IBAction func operatorButtons(_ sender: NeumorSquareButton) {
        if label.text != "" && sender.tag != 19 && sender.tag != 20 {
            previousNumber = Double(label.text!)!
            if sender.tag == 11 {
                label.text = "+"
            } else if sender.tag == 12 {
                label.text = "-"
            } else if sender.tag == 13 {
                label.text = "×"
            } else if sender.tag == 14 {
                label.text = "÷"
            }
            label.putUILabel(text: label.text!)
            currentOperation = sender.tag
            performingMath = true;
        } else if sender.tag == 19 {
            if currentOperation == 11 {
                label.text = String(previousNumber + numberOnScreen)
            } else if currentOperation == 12 {
                label.text = String(previousNumber - numberOnScreen)
            } else if currentOperation == 13 {
                label.text = String(previousNumber * numberOnScreen)
            } else if currentOperation == 14 {
                label.text = String(previousNumber / numberOnScreen)
            }
            label.putUILabel(text: label.text!)
        } else if sender.tag == 20 {
            label.text = ""
            label.putUILabel(text: "")
            currentOperation = 0
            performingMath = false
            previousNumber = 0
            numberOnScreen = 0
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

