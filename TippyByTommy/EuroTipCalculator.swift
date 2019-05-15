//
//  EuroTipCalculator.swift
//  TippyByTommy
//
//  Created by Tommy Lik on 5/12/19.
//  Copyright © 2019 Tommy Lik. All rights reserved.
//

import Foundation

class TipCalculator2{
    
    var amountBeforeTax2: Double = 0
    var tipAmount2: Double = 0
    var tipPercentage2: Double = 0
    var totalAmount2: Double = 0
    var totalBill2: Double = 0
    var taxCalculated2: Double = 0
    var justTip2: Double = 0
    var totalsTotal2: Double = 0
    
    
    init(amountBeforeTax2: Double, tipPercentage2: Double){
        self.amountBeforeTax2 = amountBeforeTax2
        self.tipPercentage2 = tipPercentage2
    }
    
    func calculateTip2(){
        
        
        tipAmount2 = amountBeforeTax2 * tipPercentage2
        taxCalculated2 = amountBeforeTax2 * 0.05
        
        totalAmount2 = tipAmount2 + amountBeforeTax2 + taxCalculated2
        
        
        justTip2 = tipAmount2
        
        totalBill2 = amountBeforeTax2
        
        totalsTotal2 = totalAmount2
        
        
        
        
        
    }
    
    
}

