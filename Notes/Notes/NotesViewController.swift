//
//  NotesViewController.swift
//  Notes
//
//  Created by Assumani, Medi on 2/22/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit
import CoreData


class NotesViewController : UITableViewController{
    
    
        // - MARK : Properties
    
    var notes = [Note]()  {
        didSet {
            tableView.reloadData()// reloads the table views if the notes have been updated
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    
    // - MARK : TableView Methods
    
    /// Function to determine the amount of rows for the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return self.notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! NotesTableViewCell
        
        let note = notes[indexPath.row]
        cell.noteTitle.text = note.title
        // 1
        cell.noteModificationTimeLabel.text = note.modificationTime?.convertToString() ?? "unknown"
        
        return cell
    }
    /// Function to delete a note in the table view
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            notes.remove(at: indexPath.row)
        }
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
    
    
    
    
    // - MARK : IBACTIONS
    
    @IBAction func unwindWithSegue(_ segue : UIStoryboardSegue){
        
        // no code required here
    }
    
}
