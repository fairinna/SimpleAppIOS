//
//  SingUpViewController.swift
//  stakeMyself
//
//  Created by Orchidea on 28/09/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit
import FirebaseAuth





class SingUpViewController: UIViewController {
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var actionButtonLogin: UIButton!
    
    @IBAction func actionLogin(_ sender: UIButton) {
        if login.text != "" && password.text != "" {
            
            if segmentControl.selectedSegmentIndex == 0 {
                Auth.auth().signIn(withEmail: login.text!, password: password.text!, completion: {(user, error) in
                    if user != nil
                    {
                        print ("Sign will successful")
                        self.performSegue(withIdentifier: "segueFortable", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                          print(myError)
                        }
                        else{
                            print("ERROR DO INNA")
                            
                        }
                    }
                })
                
            } else  //Sing up user
            {
                Auth.auth().createUser(withEmail: login.text!, password: password.text!, completion: {(user, error) in
                    if user != nil {
                        print("Success create!!")
                        self.performSegue(withIdentifier: "segueFor table", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else{
                            print("ERROR DO INNA")
                            
                        }
                        
                    }
                })
                
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
