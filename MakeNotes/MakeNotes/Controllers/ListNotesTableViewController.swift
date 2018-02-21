//
//  ViewController.swift
//  MakeNotes
//
//  Created by Assumani, Medi on 2/19/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int {
        
        
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for : indexPath)
        cell.textLabel?.text = "Cell Row : \(indexPath.row) Section : \(indexPath.section)"
        
        return cell
        
    }
   


}

