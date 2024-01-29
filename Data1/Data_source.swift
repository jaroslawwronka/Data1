//
//  Data_source.swift
//  Data1
//
//  Created by Boss on 25/01/2024.
//

import Foundation


struct userContact {
    var firstName : String
    var lastName : String
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
