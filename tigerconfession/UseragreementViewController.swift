//
//  UseragreementViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/27/21.
//

import UIKit

class UseragreementViewController: UIViewController {

    @IBOutlet weak var AgreeTextView: UIButton!
    @IBOutlet weak var DisagreeTextView: UIButton!
    
    @IBAction func AgreeButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "NameViewSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let radius = 22
        DisagreeTextView.layer.cornerRadius = CGFloat(radius)
        AgreeTextView.layer.cornerRadius = CGFloat(radius)
    }


}
