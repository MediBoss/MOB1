//
//  CoreDataHelper.swift
//  Notes
//
//  Created by Assumani, Medi on 2/25/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit
import CoreData

struct CoreDataHelper{
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            fatalError()
        }
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    
    
    /// Function to create a user's note
    static func createNewNote() -> Note{
        let note = NSEntityDescription.insertNewObject(forEntityName: "Note", into: context) as! Note
        
        return note
    }
    
    
    /// Function to save a user's note
    static func saveNote(){
        do{
            try context.save()
        }catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    
    /// Function to delete a user's note
    static func delete(note : Note){
        context.delete(note) //delets the object
        saveNote() //saves the new list of notes
        
    }
    
    /// Function to retrieve and return an array notes
    
    static func retrieveNote() -> [Note] {
        
        do{
            let fetchRequest = NSFetchRequest<Note>(entityName : "Note")
            let results = try context.fetch(fetchRequest)
            
            return results
            
        }catch let error{
            print("Could not Fetch \(error.localizedDescription)")
        }
        
        return []
    }
}


