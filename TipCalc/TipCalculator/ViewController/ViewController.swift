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

