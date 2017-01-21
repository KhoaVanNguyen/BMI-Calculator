//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Khoa on 1/19/17.
//  Copyright © 2017 Khoa. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet weak var bmiTextLbl: UILabel!
    @IBOutlet weak var bmiScoreLbl: UILabel!
    
    @IBOutlet weak var heightTF: UITextField!
    
    @IBOutlet weak var weightTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateBtn(_ sender: Any) {
       
        let bmiScore = calculateBMI()
        
        
        
        var bmiText = ""
        
        switch bmiScore {
        case 0...18.49:
          bmiText = "Underweight"
            
        case 18.5...24.9:
          bmiText = "Normal"
        case 25...29.9:
          bmiText = "Overweight"
        default:
          bmiText = "Obese"
        }
       
        
       
        bmiScoreLbl.text =  String(format: "%.2f", bmiScore)
        bmiTextLbl.text = bmiText
        
    }
    
    func calculateBMI() -> Double{
        // guard - if let -
        
        let weight = Double(weightTF.text!)! // co gia tri do', yen tam di
        let height = Double(heightTF.text!)!
        
        
        let bmiResult = weight / ( (height/100) * (height/100) )
        print(bmiResult)
        return bmiResult
    }

}

