//
//  ViewController.swift
//  Data1
//
//  Created by Boss on 15/01/2024.
//

import UIKit



class ViewController: UIViewController {
    
   

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
        users[users.count-1].userContacts.append(.init(firstName:  "Alicja", lastName: "Nowak", firstMail: "alicja.nowak@gmail.com", secondMail: "", firstPhone: "", secondPhone: "", streetName: "", postCode: "", cityName: "", CountryName: ""))
        users[users.count-1].userContacts.append(.init(firstName:  "Roman", lastName: "Winegrodzki", firstMail: "roman.winegro11@gmail.com", secondMail: "", firstPhone: "", secondPhone: "", streetName: "", postCode: "", cityName: "", CountryName: ""))
        users[users.count-1].userContacts.append(.init(firstName:  "Dariusz", lastName: "Mozak", firstMail: "dareczek@gmail.com", secondMail: "", firstPhone: "", secondPhone: "", streetName: "", postCode: "", cityName: "", CountryName: ""))
        
        users.append(.init(login: "ala", password: "haslo1"))
        
                
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? ContactListViewController {
            //if currentUser > -1 { controller.WelcomeLbl.text = ", "+users[currentUser].login }
            //controller.modalTransitionStyle = .flipHorizontal
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: nil)
        }
    }
    

    @IBAction func VerifyLogin(_ sender: UIButton) {
       
        
    }
    
    @IBAction func btnNewUser(_ sender: UIButton) {
       
    }
    
    
}

