//
//  MainPageViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/28/21.
//

import UIKit
class MainPageViewController: UIViewController{
    
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "SearchSegue", sender: self)
    }
    @IBAction func ProfileButtonPressed(_ sender: Any) {
    }
    @IBAction func AddConfessionButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "AddConfessionSegue", sender: self)
    }
    @IBAction func HomeButtonPressed(_ sender: Any) {
    }
    @IBAction func MessageButtonPressed(_ sender: Any) {
    }
    @IBAction func NotificationButtonPressed(_ sender: Any) {
    }
    @IBAction func SearchButtonPressed(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}
