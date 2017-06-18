//
//  ViewController.swift
//  Tipcalc
//
//  Created by Babak Farahanchi on 2017-06-15.
//  Copyright © 2017 Bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBOutlet weak var tipPercentageLabel: UILabel!

    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    
    @IBOutlet weak var tipLbl: UILabel!
    
    @IBOutlet weak var totalLbl: UILabel!
    var tip = TipModel(billamount: 0.0, tipPercent: 0.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculationValues()
        updateUI()
        
    }
    func setTipCalculationValues(){
    tip.tipPercent = Double(tipPercentageSlider.value)
    tip.billamount = ((textField.text)! as NSString).doubleValue
        tip.calculateTip()
    }
    
    func updateUI(){
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLabel.text = "Tip: \(Int(tipPercentageSlider.value*100))%"

    }
    @IBAction func billAmountDidChanged(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
    @IBAction func tipPercentageDidChange(_ sender: UISlider) {
        let steps: Float = 100
        let roundValue = round(sender.value*steps)/steps
        sender.value = roundValue
        
        setTipCalculationValues()
        updateUI()
    }

   

}

