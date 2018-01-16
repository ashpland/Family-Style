//
//  FSTDataManager.swift
//  Family Style
//
//  Created by Andrew on 2018-01-16.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import UIKit

class FSTDataManager: NSObject {
    static let sharedInstance = FSTDataManager()
    
    var eventList: [FSTEvent]!
    
    override init() {
        super.init()
        self.eventList = eventSetup()
    }
    
    func eventSetup() -> [FSTEvent] {
        
        let eventArray = [FSTEvent(), FSTEvent(), FSTEvent()]
        
        return eventArray
    }
    
    

}
