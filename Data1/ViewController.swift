//
//  ViewController.swift
//  Data1
//
//  Created by Boss on 15/01/2024.
//

import UIKit



class ViewController: UIViewController {
    
    struct user {
        var login : String
        var password : String
        
    }
    
    var users : [user] = []

    @IBOutlet weak var Login: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UILoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if ((Login.text == users[0].login ) && (Password.text == users[0].password)) {
            return true
        } else { return false}
    }
    
    func UILoad(){
        
        users.append(.init(login: "jarek", password: "haslo"))
        //users[0].login = "jarek"
        //users[0].password = "haslo"
        
    }

    @IBAction func VerifyLogin(_ sender: UIButton) {
        
        
    }
    
}

