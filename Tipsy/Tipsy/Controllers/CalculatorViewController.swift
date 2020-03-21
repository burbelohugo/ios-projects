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
    
    var currentTip: Float = 10.0
    var currentSplit: Int = 2
    var totalBill: String = ""
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        currentTip = Float(sender.currentTitle!.dropLast())!
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        currentSplit = Int(sender.value)
        splitNumberLabel.text = String(currentSplit)
        billTextField.endEditing(true)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let tip = currentTip / Float(100)
        let bill = Float(billTextField.text!)!
        billTextField.endEditing(true)
        let total = (bill * tip) + bill
        totalBill = String(total / Float(currentSplit))
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.total = totalBill
        destinationVC.numPeople = currentSplit
        destinationVC.tip = currentTip
    }
}

