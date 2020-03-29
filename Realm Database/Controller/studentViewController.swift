//
//  studentViewController.swift
//  Realm Database
//
//  Created by Ahmed barghash on 12/20/19.
//  Copyright © 2019 Ahmed barghash. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class studentViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var studentData = [Student]()
    
    @IBOutlet weak var studentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        studentTableView.dataSource = self
        studentTableView.delegate = self
        studentTableView.tableFooterView = UIView()
        studentTableView.tableHeaderView = UIView()
        
        let realm = try! Realm(configuration: .defaultConfiguration)
        let data = realm.objects(Student.self)
        for row in data.enumerated(){
            studentData.append(row.element)
        }
        studentTableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = studentTableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! studentTableViewCell
        cell.studentNameLabel.text = studentData[indexPath.row].name
        cell.studentNumberLabel.text = studentData[indexPath.row].mobileNumber
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
