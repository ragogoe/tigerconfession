//
//  ViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/27/21.
//

import UIKit

class SearchViewController: UIViewController {

    
    @IBOutlet weak var searchTextField: UITextField!
    @IBAction func BackButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "BacktoMainPageSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        searchTextField.resignFirstResponder()
    }
    

    
}


