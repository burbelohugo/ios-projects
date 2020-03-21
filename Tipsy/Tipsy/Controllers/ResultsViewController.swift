//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Hugo Burbelo on 3/21/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var total: String = ""
    var numPeople: Int = 0
    var tip: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = total
        settingsLabel.text = "Split between \(String(numPeople)) people, with \(String(tip))% tip"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
