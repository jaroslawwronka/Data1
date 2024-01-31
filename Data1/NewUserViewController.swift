//
//  NewUserViewController.swift
//  Data1
//
//  Created by Boss on 23/01/2024.
//

import UIKit

class NewUserViewController: UIViewController {
    
    
    
    

    @IBOutlet var scrollNewUser: UIScrollView!
    @IBOutlet var buttonBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
       
        
        if identifier == "backToLoginVC" {
           
            return true
        } else {
            return false
        }
    }

    @IBAction func backToLogin(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    

}
