//
//  FSTComponent.swift
//  Family Style
//
//  Created by Andrew on 2017-12-20.
//  Copyright © 2017 hearthedge. All rights reserved.
//

import UIKit

class FSTComponent: NSObject {
    var name: String
    var componentDescription: String
    var link: URL?
    var responsible: FSTParticipant?
    var ingredients: [FSTIngredient]
    
    override init() {
        self.name = ""
        self.componentDescription = ""
        self.ingredients = [FSTIngredient]()
        super.init()
    }
    
    init(name: String) {
        self.name = name
        self.componentDescription = ""
        self.ingredients = [FSTIngredient]()
        super.init()
    }
    
    init(name: String, ingredients: [String]) {
        self.name = name
        self.componentDescription = "Good food"
        self.ingredients = [FSTIngredient]()

        
        for ingredient in ingredients {
            self.ingredients.append(FSTIngredient(name: ingredient))
        }
        
        super.init()
    }
    
}
