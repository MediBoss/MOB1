//
//  ViewController.swift
//  TipCalculator
//
//  Created by Assumani, Medi on 1/31/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

struct myVariables{
    
    static var bill : Double = 0.0
    static var tipPercentage : Double = 0.0
}

class ViewController: UIViewController {
    
    // - MARK : IBOULETS
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountTextField: UITextField!
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var tipPercentSelector: UISegmentedControl!
    
    
    // - MARK : IBACTIONS
    @IBAction func calculateButtonTaped(_ sender: Any) {
        
        
        if myVariables.bill == Double(self.billAmountTextField.text!)!{
            
            switch self.tipPercentSelector.selectedSegmentIndex {
            case 0:
                
                myVariables.tipPercentage = 5.0
                
            case 1:
                
                myVariables.tipPercentage = 10.0
                
            case 2:
                
                myVariables.tipPercentage = 20.0
                
            default:
                
                break
            }
            
        }
        
         let restaurant_client : Payroll = Payroll(myVariables.bill,myVariables.tipPercentage)
            self.tipAmountTextField.text  = String(format : "%.2f", restaurant_client.computeTipAmount())
            self.totalAmountTextField.text = String(format: "%.2f", restaurant_client.computeTotalAmount())
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

