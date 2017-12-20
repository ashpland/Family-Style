//
//  FSTMeal.swift
//  Family Style
//
//  Created by Andrew on 2017-12-20.
//  Copyright © 2017 hearthedge. All rights reserved.
//

import UIKit

class FSTMeal: NSObject {
    
    var name: String
    var mealDescription: String?
    var dateTime: Date
    var responsible: FSTParticipant?
    var participants: [FSTParticipant]
    var components: [FSTComponent]
    
    init(_ name: String, at dateTime: Date) {
        self.name = name
        self.dateTime = dateTime
        self.participants = [FSTParticipant.user]
        self.components = [FSTComponent]()
        super.init()
    }
    
    

}
