//
//  class_TableViewCell.swift
//  LearnStudents
//
//  Created by Alexander Meinecke on 10.11.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class class_TableViewCell: UITableViewCell {

    @IBOutlet weak var className: UILabel!
    
    /**
     This function, creats all cells with the classnames
    */
    func setClassName(classPlan: ClassPlan){
        className.text = classPlan.className
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
