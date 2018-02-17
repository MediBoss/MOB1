//
//  ViewController.swift
//  TipCalculator
//
//  Created by Assumani, Medi on 1/31/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // - MARK : IBOULETS
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountTextField: UITextField!
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var tipPercentSelector: UISegmentedControl!
    
    
    // - MARK : IBACTIONS
    @IBAction func calculateButtonTaped(_ sender: Any) {
        
        
                    //SAFELY UNWRAPING IBOULETS OPTIONALS
        guard let bill = self.billAmountTextField.text, let tipAmount = self.tipAmountTextField.text, let total = self.totalAmountTextField.text else {return}
        
        if bill = self.billAmountTextField.text as? Double{
            
            var tipPercentage : Double = 0.0
            
            switch self.tipPercentSelector.selectedSegmentIndex {
            case 0:
                
                tipPercentage = 5.0
                
            case 1:
                
                tipPercentage = 10.0
                
            case 2:
                
                tipPercentage = 20.0
                
            default:
                
                return nil
            }
            
        }
        
        
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

