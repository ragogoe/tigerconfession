//
//  ViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/27/21.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var usernameTextView: UITextField!
    
    @IBOutlet weak var passwordTextView: UITextField!
    @IBOutlet weak var signUpTextView: UIButton!
    @IBOutlet weak var loginTextView: UIButton!

    
    
    @IBAction func forgotpasswordPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "forgotPasswordSegue", sender: self)
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "UseragreementSegue", sender: self)
    }
    @IBAction func LogInButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "MainPageSegue", sender: self)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let radius = 22
        usernameTextView.layer.cornerRadius = CGFloat(radius)
        passwordTextView.layer.cornerRadius = CGFloat(radius)
        signUpTextView.layer.cornerRadius = CGFloat(radius)
        loginTextView.layer.cornerRadius = CGFloat(radius)
        usernameTextView.delegate = self
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        passwordTextView.resignFirstResponder()
        usernameTextView.resignFirstResponder()
    }
    
    


}
extension IntroViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

