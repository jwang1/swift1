//
//  ViewController.swift
//  swift1
//
//  Created by JWang on 4/22/18.
//  Copyright © 2018 Jun Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloButton: UIButton!
    
    @IBOutlet weak var modifyButtonText: UIButton!
    
    @IBAction func modifyButtonText(_ sender: Any) {
        if self.modifyButtonText.currentTitle == "Changed" {
            self.modifyButtonText.setTitle("Modify", for: .normal)
        } else if self.modifyButtonText.currentTitle == "Modify" {
            self.modifyButtonText.setTitle("Changed", for: .normal)
        }
    }
    
    
    @IBAction func showAlert(_ sender: Any) {
        self.helloButton.setTitle("Test!", for: .normal)
        
        let alert = UIAlertController(title: "Hello!", message: "Hello, World!",
                                      preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Close", style:UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

