//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by vichet vatt on 1/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        adviceLabel.textColor = UIColor.yellow
        view.backgroundColor = color

    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
     

}
