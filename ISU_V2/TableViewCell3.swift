//
//  TableViewCell3.swift
//  ISU_V2
//
//  Created by EtkinlikBilgisayar on 6.10.2018.
//  Copyright © 2018 EtkinlikBilgisayar. All rights reserved.
//

import UIKit

class TableViewCell3: UITableViewCell {
    
    @IBOutlet weak var lbl_deptname: UILabel!
    @IBOutlet weak var img_dept: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        img_dept.layer.cornerRadius = img_dept.frame.width / 2
        
        img_dept.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
