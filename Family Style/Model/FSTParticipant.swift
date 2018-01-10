//
//  FSTParticipant.swift
//  Family Style
//
//  Created by Andrew on 2017-12-20.
//  Copyright © 2017 hearthedge. All rights reserved.
//

import UIKit

class FSTParticipant: NSObject {
    static let user = FSTParticipant(name: "User name")
    
    var name: String
    var avatar: UIImage?
    
    override init() {
        self.name = ""
        super.init()
    }
    
    init(name: String) {
        self.name = name
        super.init()
    }


}
