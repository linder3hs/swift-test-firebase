//
//  UserProfileViewController.swift
//  testFirebase
//
//  Created by Linder Hassinger on 10/06/21.
//

import UIKit

class UserProfileViewController: UIViewController {

    @IBOutlet weak var lblEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmail.text = AuthUser.user().email
    }
    

}
