//
//  ViewController.swift
//  NeumorCalculator
//
//  Created by Papillon on 2020/02/10.
//  Copyright © 2020 Papillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Operator {
        case undefined
        case addition
        case subtraction
        case multiplication
        case division
    }
    
    var firstValue:Double = 0;
    var secondValue:Double = 0;
    var currentOperator = Operator.undefined

    
    

    @IBOutlet weak var label: NeumorLabel!
    @IBAction func numbers(_ sender: NeumorSquareButton) {
        
        if currentOperator == .undefined {
            firstValue = firstValue * 10 + Double(sender.tag)
            label.text = String(format: "%.0f", firstValue)
            label.putUILabel(text: label.text!)

//        } else if sender.currentTitle == "." {
//            firstValue = label.text + String(".")
//            label.text = "\(firstValue)"
        } else {
            secondValue = secondValue * 10 + Double(sender.tag)
            label.text = String(format: "%.0f", firstValue)
            label.putUILabel(text: label.text!)
        }
    }
    
    @IBAction func operatorButtons(_ sender: NeumorSquareButton) {
        switch sender.currentTitle! {
        case "+":
            currentOperator = .addition
        case "-":
            currentOperator = .subtraction
        case "×":
            currentOperator = . multiplication
        case "÷":
            currentOperator = .division
        default:
            currentOperator = .undefined
        }
    }
    var value:Double = 0
    @IBAction func equalButton(_ sender: NeumorSquareButton) {
        switch currentOperator {
        case .addition:
            value = firstValue + secondValue
        case .subtraction:
            value = firstValue - secondValue
        case .multiplication:
            value = firstValue * secondValue
        case .division:
            value = firstValue / secondValue
        case .undefined:
            value = firstValue
        }
        label.text = "\(value)"
        firstValue = 0
        secondValue = 0
        currentOperator = .undefined
    }
    
    @IBAction func allClear(_ sender: NeumorSquareButton) {
        firstValue = 0
        secondValue = 0
        currentOperator = .undefined
        label.text = "0"
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

