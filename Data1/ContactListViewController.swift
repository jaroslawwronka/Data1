//
//  ContactListViewController.swift
//  Data1
//
//  Created by Boss on 15/01/2024.
//

import UIKit


class ContactListViewController: UIViewController, UITableViewDataSource {
   
   

    
    
    @IBOutlet var tableContactsView: UITableView!
    
    @IBOutlet var WelcomeLbl: UILabel!
    private let tableView : UITableView! = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return table
    }()
    
  /*  private let overrride tableContactsView : UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return table
        
    }()*/
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        tableContactsView.addSubview(tableView)
        tableView.dataSource = self
        tableView.frame = tableContactsView.bounds
        
       
        
        
        
    }
    
    func configureModels() {
        
    }
    
    func tableView(_ tableView : UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return users[currentUser].userContacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let Contacts = users[currentUser].userContacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = users[currentUser].userContacts[indexPath.row].lastName + " " + users[currentUser].userContacts[indexPath.row].firstName
        return cell
    }

   
}
