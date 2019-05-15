//
//  TippyCodeCalculatorVC.swift
//  TippyByTommy
//
//  Created by Tommy Lik on 4/30/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import UIKit

class TippyCodeCalculatorVC: UIViewController, UITextFieldDelegate
    

{
    
    @IBOutlet weak var totalResultLabel:
    UILabel!

    
    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    
    @IBOutlet weak var amountBeforeTaxLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    
    @IBOutlet weak var taxCalculatedLabel: UILabel!
    
    @IBOutlet weak var justTipLabel: UILabel!
    
    @IBOutlet weak var totalTotalLabel: UILabel!
    
    
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 0.10)


    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountBeforeTaxTextField.becomeFirstResponder()
        
        self.amountBeforeTaxTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func calculateTip(){
        
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value ) / 100
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
        

        
        tipCalculator.calculateTip()
        updateUI()
        
    }
    
    

    
    
    func updateUI(){
        
        totalResultLabel.text = String(format: "$%0.2f", tipCalculator.totalsTotal)
        
        justTipLabel.text = String(format: "$%0.2f", tipCalculator.justTip)
        
        let numberOfPeople: Int = Int(numberOfPeopleSlider.value)
        
        eachPersonAmountLabel.text = String(format: "$%0.2f", tipCalculator.totalsTotal/Double(numberOfPeople))
        
        
        taxCalculatedLabel.text = String(format: "$%0.2f", tipCalculator.taxCalculated)
        
        amountBeforeTaxLabel.text = String(format: "$%0.2f", tipCalculator.totalBill)
        
        totalTotalLabel.text = String(format: "$%0.2f", tipCalculator.totalsTotal)
        
        
        
    }
    

    
    @IBAction func tipSliderValueChanged(sender: Any)
    {
        
        
        tipPercentageLabel.text = String(format: "Tip:%02d%%", Int(tipPercentageSlider.value))
        
        calculateTip()
        
    }
    
    @IBAction func numberOfPeopleSliderValueChanged(sender: Any)
    
    {
       numberOfPeopleLabel.text = "Split: \(Int(numberOfPeopleSlider.value))"
        
        calculateTip()
    }
    
    @IBAction func amountBeforeTaxfieldChanged(_ sender: Any) {
        
        calculateTip()
    }
    
    @IBAction func totalBillOnBottom(sender: Any){
        
        
        calculateTip()
    }
    
    

    
}
