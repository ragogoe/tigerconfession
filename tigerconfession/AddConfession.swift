
//
//  MainPageViewController.swift
//  tigerconfession
//
//  Created by Reuben Agogoe on 3/28/21.
//

import UIKit
class AddConfession: UIViewController{
    
    
    @IBOutlet weak var AddImage: UIImageView!
    @IBAction func addImagePressed(_ sender: Any) {
       let imageHolder = UIImagePickerController()
        imageHolder.sourceType = . photoLibrary
        imageHolder.delegate = self
        imageHolder.allowsEditing = true
        present(imageHolder, animated: true, completion: nil)
    }
    @IBOutlet weak var submitView: UIButton!
    
    @IBOutlet weak var ConfessionTextView: UITextView!
    @IBAction func submitConfessionPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "BackToMainPageSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let radius = 25
        submitView.layer.cornerRadius = CGFloat(radius)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        ConfessionTextView.resignFirstResponder()
    }
    

}
extension AddConfession: UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerConttollerEditedImage")] as? UIImage
        {
            AddImage.image = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

