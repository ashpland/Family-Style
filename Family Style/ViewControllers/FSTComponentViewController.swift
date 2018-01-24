//
//  FSTComponentViewController.swift
//  Family Style
//
//  Created by Andrew on 2018-01-23.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import UIKit

class FSTComponentViewController: UIViewController {

    var component: FSTComponent!
    
    @IBOutlet weak var componentNameLabel: UILabel!
    @IBOutlet weak var responsibleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.componentNameLabel.text = self.component.name
    }


    @IBAction func exitButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}


extension FSTComponentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == self.component.ingredients.count {
            print("Add ingredient")
        }
        else {
            let cell = tableView.cellForRow(at: indexPath)!
            
            cell.accessoryType = cell.accessoryType == .none ? .checkmark : .none
            
           
            
            
            print("Show ingredient")
        }
        
        
        tableView.cellForRow(at: indexPath)?.isSelected = false
        
        
    }
    
    
}

extension FSTComponentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.component.ingredients.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == self.component.ingredients.count {
            let addCell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath)
            addCell.textLabel?.text = "+ Add Item"
            addCell.accessoryType = UITableViewCellAccessoryType.none
            return addCell
        }
            
        else {
            let ingredient = self.component.ingredients[indexPath.row]
            let ingredientCell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath)
            
            ingredientCell.textLabel?.text = ingredient.name
            
            return ingredientCell
        }
        
        
    }
    
    
    
    
}
