//
//  ValidationService.swift
//  LittleCrown
//
//  Created by Grzegorz Przybyła on 29/06/2018.
//  Copyright © 2018 Grzegorz Przybyła. All rights reserved.
//

import Foundation

class ValidationService {
    
    static func emailValidation(email : String?) -> Bool {
        guard let email = email else {
            return false
        }
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        var valid = NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
        if valid {
            valid = !email.contains("..")
        }
        return valid
    }
    
    static func textValidation(text: String?, length: Int) -> Bool {
        guard let text = text, text.count >= length else {
            return false
        }
        return true
    }
}
