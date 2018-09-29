//
//  LoginViewController.swift
//  Parse_Chat
//
//  Created by kairi on 9/29/18.
//  Copyright © 2018 kairi. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var userField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: Any) {
    }
    

    @IBAction func SignUp(_ sender: Any) {
        func registerUser() {
            // initialize a user object
            let newUser = PFUser()
            
            // set user properties
            newUser.username = userField.text
            //newUser.email = emailField.text
            newUser.password = passField.text
            
            // call sign up function on the object
            newUser.signUpInBackground { (success: Bool, error: Error?) in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("User Registered successfully")
                    // manually segue to logged in view
                }
            }
        }
    }
    

   

}
