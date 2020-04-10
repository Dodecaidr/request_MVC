//
//  File.swift
//  MVC_N
//
//  Created by Илья Лобков on 10/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation


struct Catigories {
    var name: String
    
    init?(dict: [String:AnyObject]) {
        guard let name = dict["name"] as? String  else {  return nil }
        
        self.name = name
    }
}
struct ItemSubcategory: Codable {
    var id: String?
    var iconImage: String?
    var sortOrder: String?
    var name: String?
    var type: String?
    
}
