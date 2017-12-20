//
//  FSTEvent.swift
//  Family Style
//
//  Created by Andrew on 2017-12-20.
//  Copyright © 2017 hearthedge. All rights reserved.
//

import UIKit

class FSTEvent: NSObject {
    var name: String
    var eventDescription: String
    var meals: Array = [FSTMeal]()
        
    override init() {
        self.name = ""
        self.eventDescription = ""
        super.init()
    }
    
}
