//
//  ViewController.swift
//  MVC_N
//
//  Created by Илья Лобков on 09/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class CatigoriesController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    
    var catigories = [Catigories]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CatigoriesNetworcService.getComponents { (respos) in
            self.catigories = respos.catigories
            self.tabelView.reloadData()
        }
    }
    
    
}

extension CatigoriesController: UITableViewDelegate {}

extension CatigoriesController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catigories.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComentCell", for: indexPath) as! CarigoriesCell
        let catigori = catigories[indexPath.row]
        cell.configurete(with: catigori)
        
        return cell
    }
}

