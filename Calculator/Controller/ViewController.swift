//
//  ViewController.swift
//  Calculator
//
//  Created by Aybatu Kerkukluoglu on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    var calculatorLogic = CalculatorLogic()
    private var isFinishedTypingNum: Bool = true
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label to a Double.")
            }
            return number
        }
        set {
            displayLabel.text! = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcPressed(_ sender: UIButton) {
        isFinishedTypingNum = true
        calculatorLogic.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            if let result = calculatorLogic.calculation(symbol: calcMethod) {
                displayValue = result
            }
        }
    }
    
    
    @IBAction func numPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle  {
            if isFinishedTypingNum {
                displayLabel.text = numValue
                isFinishedTypingNum = false
            } else {
                if numValue == "."{
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}

