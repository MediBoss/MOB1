//
//  MainVC.swift
//  TipCalculator
//
//  Created by Medi Assumani on 8/20/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import Foundation
import UIKit

class MainVC: UIViewController{
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    @IBAction func themeSwitchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("Dark Theme activated")
        }else {
            print("Light Theme activated")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
