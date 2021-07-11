//
//  ViewController.swift
//  Calculator
//
//  Created by Aybatu Kerkukluoglu on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    private var calcPressed: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcPressed(_ sender: UIButton) {
        if calcPressed {
            displayLabel.text = sender.currentTitle
            calcPressed = false
        } else {
            displayLabel.text = sender.currentTitle
        }
    }
    
    
    @IBAction func numPressed(_ sender: UIButton) {
        displayLabel.text = sender.currentTitle
    }
    
}

