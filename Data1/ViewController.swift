//
//  ViewController.swift
//  Data1
//
//  Created by Boss on 15/01/2024.
//

import UIKit



class ViewController: UIViewController {
    
    struct userContact {
        var firstName : String
        var laseName : String
        var firstMail : String
        var secondMail : String
        var firstPhone : String
        var secondPhone : String
        var streetName : String
        var postCode : String
        var cityName : String
        var CountryName : String
        //var imageContact : Image
        
    }
    
    struct user {
        var login : String
        var password : String
        var userContacts : [userContact] = []
        //var imageUser : ImageResource
        
    }
    
    var users : [user] = []
    var currentUser : Int = -1

    @IBOutlet weak var Login: UITextField!
    @IBOutlet weak var btnVerify: UIButton!
    @IBOutlet weak var btnNewUser: UIButton!
    @IBOutlet weak var Password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UILoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var isUser : Bool = false
        var isNewUser : Bool = false
        
        if identifier == "EnterToContactListVC" {
            var tempI : Int = -1
           
            repeat {
                tempI = tempI + 1
                if ((Login.text == users[tempI].login ) && (Password.text == users[tempI].password)) {
                    
                    isUser = true
                    currentUser = tempI
                }
                
            } while !((tempI == users.count - 1) || (isUser == true))
            
            
            
        }
        if identifier == "EnterToNewUserVC" {
            isNewUser = true
            
            
        }
        
        if ((isNewUser == true) || (isUser == true)) {
            return true
        } else {
            return false
        }
    }
    
    func UILoad(){
        
        users.append(.init(login: "jarek", password: "haslo"))
        users.append(.init(login: "ala", password: "haslo1"))
        //users[0].login = "jarek"
        //users[0].password = "haslo"
        
    }

    @IBAction func VerifyLogin(_ sender: UIButton) {
       
        
    }
    
    @IBAction func btnNewUser(_ sender: UIButton) {
       
    }
    
    
}

