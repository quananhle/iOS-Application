//
//  FindViewController.swift
//  StudIIT
//
//  Created by Ashley Le on 4/12/21.
//  Copyright © 2021 codepath. All rights reserved.
//

import UIKit
import Parse

class FindViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let login = main.instantiateViewController(withIdentifier: "LoginViewController")
        let delegate = self.view.window?.rootViewController = login
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
