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
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.setImage(UIImage(named:"thumbsUp.png"), for: .normal)
        button.addTarget(self, action: #selector(thumbsUpButtonPressed), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @IBAction func onSendLoginLink(_ sender: Any) {
        let email = emailField.text
        PFUser.requestPasswordResetForEmail(inBackground:email!)
    }

    @objc func thumbsUpButtonPressed() {
        print("Send Login Link Button pressed!")
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
