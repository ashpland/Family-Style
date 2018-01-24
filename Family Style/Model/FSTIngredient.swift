//
//  FSTIngredient.swift
//  Family Style
//
//  Created by Andrew on 2017-12-20.
//  Copyright © 2017 hearthedge. All rights reserved.
//

import UIKit

class FSTIngredient: NSObject {
    var name: String
    var ingredientDescription: String
    var responsible: FSTParticipant?
    
    override init() {
        self.name = ""
        self.ingredientDescription = ""
        super.init()
    }
    
    init(name: String) {
        self.name = name
        self.ingredientDescription = ""
        super.init()
    }

}
