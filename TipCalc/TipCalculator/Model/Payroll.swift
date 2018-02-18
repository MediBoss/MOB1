//
//  Payroll.swift
//  TipCalculator
//
//  Created by Assumani, Medi on 2/15/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import Foundation

class Payroll{
    
    
    private var billAmount : Double
    private var tipPercent : Double
    
    
    // - MARK: INITIALIZER
    init(_ bill : Double, _ percent : Double) {
        
        self.billAmount = bill
        self.tipPercent = percent
    }
    
    // - MARK: DEINITIALIZER
    
    
    // - MARK: GETTERS METHODS
    
    //Function to return the tip percent chosen by the customer
    //Postcondition : the tip percent is returned
    func getTipPercent() -> Double{
    
        return self.tipPercent
    }
    
    //function to return the bill amount given by the waiter
    //Postcondition : The bill amount is returned

    func getBillAmount() -> Double{
        
        return self.billAmount
    }
    
    // - MARK: COMPUTING FUNCTIONS
    
    //function to return the amount to tip the waiter baised on the bill amount
    //Postcondition : The tip amount is returned
    func computeTipAmount() -> Double{
    
        return (self.billAmount * self.tipPercent)/100
    }
    
    //function to return the total amount of money to pay the waiter
    //Postcondition : The total price is returned
    func computeTotalAmount() -> Double{
    
    return (self.getBillAmount() + self.computeTipAmount())
    }
    
}
