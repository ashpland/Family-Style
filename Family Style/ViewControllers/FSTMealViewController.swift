//
//  FSTMealViewController.swift
//  Family Style
//
//  Created by Andrew on 2018-01-23.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import UIKit

class FSTMealViewController: UIViewController {

    let meal = FSTMeal("Thanksgiving", at: Date())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createDemoData()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
}

// demo data
extension FSTMealViewController {
    func createDemoData() {
        let turkey = FSTComponent()
        turkey.name = "Turkey"
        let potatoes = FSTComponent()
        potatoes.name = "Potatoes"
        let sauce = FSTComponent()
        sauce.name = "Cranberry Sauce"
        
        self.meal.components.append(turkey)
        self.meal.components.append(potatoes)
        self.meal.components.append(sauce)
    }
}

extension FSTMealViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == meal.components.count {
            print("Add item")
        }
        else {
            print("Show item")
        }
        
        
        tableView.cellForRow(at: indexPath)?.isSelected = false
        
        
    }
    
    
}

extension FSTMealViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meal.components.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == meal.components.count {
            let addCell = tableView.dequeueReusableCell(withIdentifier: "ComponentCell", for: indexPath)
            addCell.textLabel?.text = "+ Add Item"
            addCell.accessoryType = UITableViewCellAccessoryType.none
            return addCell
        }
        
        else {
            let component = meal.components[indexPath.row]
            let componentCell = tableView.dequeueReusableCell(withIdentifier: "ComponentCell", for: indexPath)
            
            componentCell.textLabel?.text = component.name
            
            return componentCell
        }
        
        
    }
    
    
    
    
}
