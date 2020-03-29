//
//  studentAddValidator.swift
//  Realm Database
//
//  Created by Ahmed barghash on 12/20/19.
//  Copyright © 2019 Ahmed barghash. All rights reserved.
//

import Foundation

class studentAddValidator{
    
    func nameValidate(name: String) -> Bool {
        if name.count > 2 {
            return true
        }else{
            return false
        }
    }
    
    func mobileValidate(mobileNumber: String) -> Bool {
        if mobileNumber.count > 2 {
            return true
        }else{
            return false
        }
    }
    
}
