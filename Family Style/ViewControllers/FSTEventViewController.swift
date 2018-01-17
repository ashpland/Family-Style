//
//  FSTEventViewController.swift
//  Family Style
//
//  Created by Andrew on 2018-01-16.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import UIKit

class FSTEventViewController: UIViewController {

    var event: FSTEvent!
    
    @IBOutlet weak var descriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = event.name
        self.descriptionField.text = event.eventDescription
        
    }
    
}

extension FSTEventViewController: UITableViewDelegate {
    
}

extension FSTEventViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        
        cell.textLabel?.text = "Meal"

        return cell
        
    }
    
    
}
