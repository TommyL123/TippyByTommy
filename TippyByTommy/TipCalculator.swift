//
//  TippyModel.swift
//  TippyByTommy
//
//  Created by Tommy Lik on 5/12/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import Foundation

class TipCalculator{
    
    var amountBeforeTax: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    var totalBill: Double = 0
    var taxCalculated: Double = 0
    var justTip: Double = 0
    var totalsTotal: Double = 0
    
    
    init(amountBeforeTax: Double, tipPercentage: Double){
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip(){
        
        
        tipAmount = amountBeforeTax * tipPercentage
        taxCalculated = amountBeforeTax * 0.0875
      
        totalAmount = tipAmount + amountBeforeTax + taxCalculated
        
        
        justTip = tipAmount
        
        totalBill = amountBeforeTax
        
        totalsTotal = totalAmount
        
        
        
        
        
    }
    

}


