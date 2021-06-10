//
//  User.swift
//  testFirebase
//
//  Created by Linder Hassinger on 10/06/21.
//

import Foundation
import FirebaseAuth

class User {
    
    let email: String
    let id: String
    
    init(email: String, id: String) {
        self.email = email
        self.id = id
    }
}
