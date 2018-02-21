//
//  ViewController.swift
//  Theme
//
//  Created by Assumani, Medi on 2/20/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var midnightLabel: UILabel!
    @IBOutlet weak var midnightSwitch: UISwitch!
    @IBOutlet var mainView: UIView!
    
    /// When called, the them is changed to a midnight mode
    func midnightThemeSelected(){
        
      guard let myView = self.mainView , let theTitle = self.titleLabel, let nightTimeLable = self.midnightLabel , let appImage = self.image  else {return}
        
            myView.backgroundColor = UIColor.black
            theTitle.textColor = UIColor.white
            nightTimeLable.textColor = UIColor.white
            appImage.image = UIImage(named : "midnight")
            self.midnightSwitch.setOn(true, animated: false)
        
    }
    
    func dayTimeThemeIsSelected(){
        
        self.mainView.backgroundColor = UIColor.white
        self.titleLabel.textColor = UIColor.black
        self.midnightLabel.textColor = UIColor.black
        self.image.image = UIImage(named : "daytime")
        self.midnightSwitch.setOn(false, animated: false)
    }
    

    @IBAction func midnightSwitchIsOn(_ sender: Any) {
        
        let defaultPreferences = UserDefaults.standard
        let mySwitch : UISwitch = sender as! UISwitch
        
        if mySwitch.isOn{

            self.midnightThemeSelected()
            defaultPreferences.set(true, forKey: "midnightThemOn")
            defaultPreferences.synchronize()
        }else{
            
            self.dayTimeThemeIsSelected()
            defaultPreferences.set(false, forKey: "midnightThemOn")
            defaultPreferences.synchronize()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultPreferences = UserDefaults.standard
        
        if let isMidnightThemOn: Bool = defaultPreferences.value(forKey: "midnightThemOn") as! Bool? {
            if isMidnightThemOn{
                self.midnightThemeSelected()
                self.midnightSwitch.isOn = true
            }else{
                self.dayTimeThemeIsSelected()
                self.midnightSwitch.isOn = false
            }
        }else{
            self.dayTimeThemeIsSelected()
            self.midnightSwitch.isOn = false
            defaultPreferences.set(false, forKey: "midnightThemOn")
            defaultPreferences.synchronize
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

