//
//  CategoriesCell.swift
//  MVC_N
//
//  Created by Илья Лобков on 10/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class CarigoriesCell:UITableViewCell {
    
    @IBOutlet weak var lable: UILabel! 
    
    func configurete(with catigories: Catigories) {
        self.lable.text = catigories.name
    }
}
