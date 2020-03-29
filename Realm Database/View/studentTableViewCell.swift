//
//  studentTableViewCell.swift
//  Realm Database
//
//  Created by Ahmed barghash on 12/20/19.
//  Copyright © 2019 Ahmed barghash. All rights reserved.
//

import UIKit

class studentTableViewCell: UITableViewCell {
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
