//
//  ForgetPasswordViewController.swift
//  StudIIT
//
//  Created by Ashley Le on 4/12/21.
//  Copyright © 2021 codepath. All rights reserved.
//

import UIKit
import Parse

class ForgetPasswordViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSendLoginLink(_ sender: Any) {
        PFUser.requestPasswordResetForEmail(inBackground:"email@example.com")
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text
        let password = passwordField.text
        PFUser.logInWithUsername(inBackground: username!, password: password!) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else {
                print ("Error: \(error?.localizedDescription)")
            }
        }
    }
    @IBAction func onForgotPassword(_ sender: Any) {
    }
    @IBAction func onRegister(_ sender: Any) {
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
