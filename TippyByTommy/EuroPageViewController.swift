//
//  EuroPageViewController.swift
//  TippyByTommy
//
//  Created by Tommy Lik on 5/12/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import UIKit

class EuroPageViewController: UIViewController, UITextFieldDelegate
    
    
{
    
    @IBOutlet weak var totalResultLabel2:
    UILabel!
    
    
    @IBOutlet weak var amountBeforeTaxTextField2: UITextField!
    
    @IBOutlet weak var amountBeforeTaxLabel2: UILabel!
    
    @IBOutlet weak var tipPercentageLabel2: UILabel!
    
    @IBOutlet weak var tipPercentageSlider2: UISlider!
    
    @IBOutlet weak var numberOfPeopleSlider2: UISlider!
    
    @IBOutlet weak var numberOfPeopleLabel2: UILabel!
    
    @IBOutlet weak var eachPersonAmountLabel2: UILabel!
    
    @IBOutlet weak var taxCalculatedLabel2: UILabel!
    
    @IBOutlet weak var justTipLabel2: UILabel!
    
    @IBOutlet weak var totalTotalLabel2: UILabel!
    
    
    var tipCalculator2 = TipCalculator2(amountBeforeTax2: 0, tipPercentage2: 0.10)
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func calculateTip2(){
        
        tipCalculator2.tipPercentage2 = Double(tipPercentageSlider2.value ) / 100
        tipCalculator2.amountBeforeTax2 = (amountBeforeTaxTextField2.text! as NSString).doubleValue
        
        
        
        tipCalculator2.calculateTip2()
        updateUI()
        
    }
    
    
    
    
    
    func updateUI(){
        
        totalResultLabel2.text = String(format: "€%0.2f", tipCalculator2.totalsTotal2)
        
        justTipLabel2.text = String(format: "€%0.2f", tipCalculator2.justTip2)
        
        let numberOfPeople: Int = Int(numberOfPeopleSlider2.value)
        
        eachPersonAmountLabel2.text = String(format: "€%0.2f", tipCalculator2.totalsTotal2/Double(numberOfPeople))
        
        
        taxCalculatedLabel2.text = String(format: "€%0.2f", tipCalculator2.taxCalculated2)
        
        amountBeforeTaxLabel2.text = String(format: "€%0.2f", tipCalculator2.totalBill2)
        
        totalTotalLabel2.text = String(format: "€%0.2f", tipCalculator2.totalsTotal2)
        
        
        
    }
    
    
    
    @IBAction func tipSliderValueChanged2(sender: Any)
    {
        
        
        tipPercentageLabel2.text = String(format: "Tip:%02d%%", Int(tipPercentageSlider2.value))
        
        calculateTip2()
        
    }
    
    @IBAction func numberOfPeopleSliderValueChanged2(sender: Any)
        
    {
        numberOfPeopleLabel2.text = "Split: \(Int(numberOfPeopleSlider2.value))"
        
        calculateTip2()
    }
    
    @IBAction func amountBeforeTaxfieldChanged2(_ sender: Any) {
        
        calculateTip2()
    }
    
    @IBAction func totalBillOnBottom2(sender: Any){
        
        
        calculateTip2()
    }
    
    
    
    
}
