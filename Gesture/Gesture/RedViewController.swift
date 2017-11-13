//
//  RedViewController.swift
//  Gesture
//
//  Created by Orchidea on 13/09/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    @IBAction func transitionBlue(_ sender: UITapGestureRecognizer) {
        let storiBoardBlue = UIStoryboard(name: "Main", bundle: nil)
            let blueVC = storiBoardBlue.instantiateViewController(withIdentifier: "blue1")
            blueVC.modalTransitionStyle = UIModalTransitionStyle.partialCurl
            self.present(blueVC, animated: true, completion: nil)
        
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
