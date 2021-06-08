//
//  UsernameViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/28/21.
//

import UIKit
class UsernameViewController: UIViewController
{
    @IBOutlet weak var setUpViewControll: UIButton!
    @IBOutlet weak var EmailTextView: UITextField!
    @IBOutlet weak var UsernameTextView: UITextField!
    @IBAction func setUpPasswordPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "PasswordSegue", sender: self)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let radius = 22
        setUpViewControll.layer.cornerRadius = CGFloat(radius)
    
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UsernameTextView.resignFirstResponder()
        EmailTextView.resignFirstResponder()
        
    }

}

