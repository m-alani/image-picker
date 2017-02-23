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
        //imagePicker()
        activityController()
    }
    
    /// Display the default image picker (Modal View)
    func imagePicker() {
        let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }
    
    
    /// Display the default activity picker (Modal View)
    func activityController() {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
}

