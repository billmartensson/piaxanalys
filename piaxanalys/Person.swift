//
//  Person.swift
//  piaxanalys
//
//  Created by Bill Martensson on 2021-12-22.
//

import Foundation

class Person {
    
    var firstname = ""
    var lastname = ""
    
    /// Function get the persons full name
    ///
    /// - Warning: Remember to set **stuff**
    ///
    /// Usage:
    ///
    ///     var someone = Person()
    ///     someone.firstname = "A"
    ///     print(someone.getFullname())
    ///
    ///
    /// - Returns: The persons full name
    func getFullname() -> String
    {
        if(firstname == " ")
        {
            return "Felaktigt namn!"
        }
        if(lastname == " ")
        {
            return "Felaktigt efternamn!"
        }

        if(firstname == "" && lastname == "")
        {
            return "Namn saknas!"
        }
        
        if(lastname == "")
        {
            return firstname
        }
        
        return firstname + " " + lastname
    }
    
}
