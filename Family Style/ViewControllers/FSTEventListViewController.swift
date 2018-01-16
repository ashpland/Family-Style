//
//  FSTEventListViewController.swift
//  Family Style
//
//  Created by Andrew on 2018-01-16.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import UIKit

class FSTEventListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

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
