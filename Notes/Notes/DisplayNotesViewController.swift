//
//  DisplayNotesViewController.swift
//  Notes
//
//  Created by Assumani, Medi on 2/22/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import Foundation
import UIKit

class DisplayNotesViewController: UIViewController{
    
    // - MAKR : @IBOULETS
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        func viewWillAppear(_ animated: Bool){
            super.viewWillAppear(animated)
            self.titleTextField.text = ""
            self.noteTextView.text = ""
        }
        
    }
    
    
    
    // - MARK : Segue Triggering Alarm Function
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let identifier = segue.identifier else {return}
        
        switch identifier{
        case "save":
            
            let note = Notes()
            note.title = titleTextField.text ?? ""
            note.content = noteTextView.text ?? ""
            note.modificationTime = Date()
            
            
            let destination = segue.destination as! NotesViewController
            destination.notes.append(note)
        case "cancel":
            
            print("cancel bar button is taped")
            
            
        default:
            print("unexpectd segue identifier")
        }
    }
}
