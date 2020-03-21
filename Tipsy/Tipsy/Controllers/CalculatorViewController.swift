//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var currentTip: Float = 0.1
    var currentSplit: Int = 2
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        currentTip = Float(sender.currentTitle!.dropLast())!
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        currentSplit = Int(sender.value)
        splitNumberLabel.text = String(currentSplit)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(currentTip)
        print(currentSplit)
    }
    
}

