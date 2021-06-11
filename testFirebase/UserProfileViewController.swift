//
//  UserProfileViewController.swift
//  testFirebase
//
//  Created by Linder Hassinger on 10/06/21.
//

import UIKit
import FirebaseDatabase

class UserProfileViewController: UIViewController {

    @IBOutlet weak var lblEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmail.text = AuthUser.user().email
        getUsers()
    }
    
    func getUsers() {
        Database.database().reference().child("users").observeSingleEvent(of: .value, with: {(snapshot) in
            print(snapshot)
        })
    }
    

}
