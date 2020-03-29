//
//  ViewController.swift
//  Realm Database
//
//  Created by Ahmed barghash on 12/20/19.
//  Copyright © 2019 Ahmed barghash. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class ViewController: UIViewController {
    @IBOutlet weak var studentNameTxt: UITextField!
    @IBOutlet weak var studentNumberTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        
       
        let studentValidator = studentAddValidator()
        let nameValidateResult = studentValidator.nameValidate(name: studentNameTxt.text!)
        if nameValidateResult == false {
            print("Wrong Name ....")
            return
        }
        let mobileValidateResult = studentValidator.mobileValidate(mobileNumber: studentNameTxt.text!)
        if mobileValidateResult == false {
            print("Wrong Mobile Number ....")
            return
        }
        
        let student = Student()
        student.name=studentNameTxt.text!
        student.mobileNumber=studentNumberTxt.text!
        
        let realm = try! Realm(configuration: .defaultConfiguration)
        try! realm.write {
            realm.add(student)
        }
        
        print("Saved....")
        
        studentNameTxt.text = ""
        studentNumberTxt.text = ""
        
        
    }
    
}

