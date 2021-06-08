//
//  Name.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/27/21.
//

import UIKit
class NameViewController: UIViewController{
    
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var proceedTextView: UIButton!
    
    @IBAction func proceedIsTapped(_ sender: Any) {
        if ((firstname.text != nil) && (lastname.text != nil)){
            self.performSegue(withIdentifier: "UsernameSegue", sender: self)
        }
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstname.resignFirstResponder()
        lastname.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let radius = 22
        proceedTextView.layer.cornerRadius = CGFloat(radius)
    }
  
    
    
}


