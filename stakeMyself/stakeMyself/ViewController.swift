//
//  ViewController.swift
//  stakeMyself
//
//  Created by Orchidea on 24/09/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit
import FirebaseDatabase



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var myTextField: UITextField!
    
    var myList:[String] = []
    
    var ref: DatabaseReference!
    var handel:DatabaseHandle!
    
    @IBAction func saveBtn(_ sender: Any) {
        
      
        // Saving item to dataBase
        if myTextField.text != "" {
        
        ref?.child("list").childByAutoId().setValue(myTextField.text)
            myTextField.text = ""
        
        }
        
    }
    
    //Setting up our table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell2")
        cell.textLabel?.text = myList[indexPath.row]
       
        return cell
    }
    
    
//    @IBAction func showTable(_ sender: UITapGestureRecognizer) {
//        self.performSegue(withIdentifier: "segue1", sender: self)
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
         ref = Database.database().reference()
        handel = ref?.child("list").observe(.childAdded, with: {(snapshot) in
            if let item = snapshot.value as? String
            {self.myList.append(item)
            self.myTable.reloadData()
            }
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

