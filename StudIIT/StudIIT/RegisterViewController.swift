//
//  RegisterViewController.swift
//  StudIIT
//
//  Created by Quan Le on 4/6/21.
//  Copyright © 2021 codepath. All rights reserved.
//

import UIKit
import Parse

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        var user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.email = emailField.text
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "signedupSegue", sender: nil)
                let username = self.usernameField.text
                let password = self.passwordField.text
            }
            else {
                print ("Error: \(error?.localizedDescription)")
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
