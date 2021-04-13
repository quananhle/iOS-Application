//
//  ForgetPasswordViewController.swift
//  StudIIT
//
//  Created by Ashley Le on 4/12/21.
//  Copyright © 2021 codepath. All rights reserved.
//

import UIKit
import Parse

extension String {
    func isValidEmail() -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}

class ForgetPasswordViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSendLoginLink(_ sender: Any) {
        let email: String = emailField.text!
        if email.isValidEmail(){
            PFUser.requestPasswordResetForEmail(inBackground:"email@example.com")
        }
    }

    @IBAction func afterLinkSent(_ sender: Any) {
        self.performSegue(withIdentifier: "resetPasswordSegue", sender: nil)
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
