//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by vichet vatt on 7/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Should eat more", color: UIColor.brown)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are fine", color: UIColor.blue)
        } else {
            bmi = BMI(value: bmiValue, advice: "Should eat less", color: UIColor.red)
        }
    }
    
}
