//
//  NotesViewController.swift
//  Notes
//
//  Created by Assumani, Medi on 2/22/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import Foundation
import UIKit

class NotesViewController : UITableViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //- MARKDOWN : TableView Functions
    
    /// Function to determine the amount of rows for the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! NotesTableViewCell
        cell.noteTitle.text = "note's title"
        cell.noteModificationTimeLabel.text = "note modification time"
        
        return cell
    }
    
    /// Function to show actions when segues are triggered
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let identifier = segue.identifier else { return }
        
        
        switch identifier{
            
        case "displayNote":
            print("note cell taped")
            
        case "addNote" :
            print("create note bar button taped")
            
            
        default :
            
            print("unexpected segue identifier")
            
            
        }
    }
    
    
    
    
    //- MARKDOWN : IBACTIONS
    
    @IBAction func unwindWithSegue(_ segue : UIStoryboardSegue){
        
        // no code required here
    }
    
}
