//
//  RegistrationDetails.swift
//  DatabaseTesting
//
//  Created by Oleg Plugaru on 13.03.2024.
//

import Foundation

struct RegistrationDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName: String
    var occupation: String 
}

extension RegistrationDetails {
    
   static var new: RegistrationDetails {
        RegistrationDetails(email: "",
                            password: "",
                            firstName: "",
                            lastName: "", 
                            occupation: "")
    }
}
