//
//  Student.swift
//  Realm Database
//
//  Created by Ahmed barghash on 12/20/19.
//  Copyright © 2019 Ahmed barghash. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class Student: Object{
    
    @objc dynamic var name: String = ""
    @objc dynamic var mobileNumber : String = ""
    
}
