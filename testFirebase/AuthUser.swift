//
//  Auth.swift
//  testFirebase
//
//  Created by Linder Hassinger on 10/06/21.
//

import Foundation
import UIKit
import FirebaseAuth

class AuthUser {
    
    static func user() -> User {
        let currentUser = FirebaseAuth.Auth.auth().currentUser
        let email = currentUser?.email!
        let id = currentUser?.uid
        return User(email: email!, id: id!)
    }
}
