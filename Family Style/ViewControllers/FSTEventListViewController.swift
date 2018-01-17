//
//  FSTEventListViewController.swift
//  Family Style
//
//  Created by Andrew on 2018-01-16.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import UIKit

class FSTEventListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EventSegue" {
            let eventID = self.tableView.indexPathForSelectedRow!.row
            
            print(FSTDataManager.event(index: eventID))
            
        }
    }
    
    
}

extension FSTEventListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
}

extension FSTEventListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FSTDataManager.numberOfEvents()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let event = FSTDataManager.event(index: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)
        
        cell.textLabel?.text = event.name
        cell.detailTextLabel?.text = event.eventDescription
        
        return cell
        
    }
}
