//
//  RegisterViewController.swift
//  stakeMyself
//
//  Created by Orchidea on 09/10/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBAction func btnLogOut(_ sender: UIButton) {
        
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "segueLogOut", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (Auth.auth().currentUser!.email!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
