//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Implemented by Medi Assumani on 2/17/2018
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListNotesTableViewCell", for: indexPath)
        cell.textLabel?.text = "Cell Row Number \(indexPath.row) Section Number \(indexPath.section)"
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
