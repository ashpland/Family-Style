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
        
        eventArray[0].name = "Thanksgiving"
        eventArray[0].eventDescription = "At the cottage"
        
        eventArray[1].name = "Chaos Dinner Party"
        eventArray[1].eventDescription = "In celebration of memes"
        
        eventArray[2].name = "Tuesday Night Supper"
        eventArray[2].eventDescription = "Bring tomorrow lunch containers"
        return eventArray
    }
    
    static func numberOfEvents() -> Int {
        return FSTDataManager.sharedInstance.eventList.count
    }
    
    static func event(index: Int) -> FSTEvent {
        return FSTDataManager.sharedInstance.eventList[index]
    }
    
    

}
