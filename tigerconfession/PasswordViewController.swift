//
//  PasswordViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/28/21.
//

import UIKit
class PasswordViewController : UIViewController{
    
    @IBOutlet weak var finish: UIButton!
    
    @IBOutlet weak var createPassword: UITextField!
    @IBOutlet weak var retypePassword: UITextField!
    @IBAction func finishButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "IntroViewSegue", sender: self)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let radius = 22
        finish.layer.cornerRadius = CGFloat(radius)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        createPassword.resignFirstResponder()
        retypePassword.resignFirstResponder()
    }
}
