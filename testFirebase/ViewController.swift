//
//  ViewController.swift
//  testFirebase
//
//  Created by Linder Hassinger on 10/06/21.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onClickSingUp(_ sender: Any) {
        let email = emailTxt.text!
        let password = passwordTxt.text!
        
        Auth.auth().createUser(withEmail: email, password: password) { [self] error, info in
            self.store(email: email, password: password)
            performSegue(withIdentifier: "nextScreen", sender: nil)
        }
    
    }
    func store(email:String, password: String) {
        let user = [
            "email": email,
            "name": password,
        ]
        
        let id = Int.random(in: 1..<1000)
        
        Database.database().reference().child("users").child(String(id)).setValue(user)
    }

}

