//
//  User.swift
//  Instalook-User
//
//  Created by Amer Shaker on 5/31/19.
//  Copyright © 2019 Instalook. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    
    var userId: Int?
    var firstName: String?
    var lastName: String?
    var email: String?
    var password: String?
    
    init() {
        
    }
    
    required init(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId <- map[NetworkingConstants.userId]
        firstName <- map[NetworkingConstants.firstName]
        lastName <- map[NetworkingConstants.lastName]
        email <- map[NetworkingConstants.email]
        password <- map[NetworkingConstants.password]
    }
}
