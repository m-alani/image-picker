//
//  ViewController.swift
//  Image Picker
//
//  Created by Marwan Alani on 2017-02-23.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    /// The call back for pressing the button
    @IBAction func experiment(_ sender: Any) {
        // Uncomment 1 function at a time to experiment with
        
        imagePicker()
        // activityController()
        // alertController()
    }
    
    /// Display the default image picker (Modal View)
    func imagePicker() {
        let controller = UIImagePickerController()
        self.present(controller, animated: true, completion: nil)
    }
    
    
    /// Display the default activity picker (Modal View)
    func activityController() {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    /// Display the default Alert controller (Modal View)
    func alertController() {
        // A UIAlertController requires a Title & Message to be displayed. It also doesn't have any logic to dismiss itself on its own, so we need to add a UIAlertAction for that
        let controller = UIAlertController()
        controller.title = "Alert!"
        controller.message = "This is a vanilla Alert Controller"
        let alertAction = UIAlertAction(title: "Cool", style: .default) {
            action in
                self.dismiss(animated: true, completion: nil)
        }
        controller.addAction(alertAction)
        
        self.present(controller, animated: true, completion: nil)
    }
}

