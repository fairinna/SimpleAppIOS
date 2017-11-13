//
//  GreenViewController.swift
//  Gesture
//
//  Created by Orchidea on 13/09/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
//    var initialisationText:String = "No text yet =( "
//    @IBOutlet weak var mainLabel: UILabel!
//
    
    
    
    
    @IBAction func transitionToRed(_ sender: UITapGestureRecognizer) {
        let storyBoardRed = UIStoryboard(name: "Main", bundle: nil)
        
        let redVC = storyBoardRed.instantiateViewController(withIdentifier: "red1") as! RedViewController
        
        redVC.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        
        
        
        self.present(redVC, animated: true, completion: nil)
        
        
    }

//    @IBAction func tapused(_ sender: UITapGestureRecognizer) {
//        self.dismiss(animated: true, completion: nil)
//}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      // mainLabel.text = initialisationText
        
        
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
