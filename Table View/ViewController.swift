//
//  ViewController.swift
//  Table View
//
//  Created by Rasyid Respati Wiriaatmaja on 28/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let city = ["Jakarta", "Tangerang", "Bogor", "Bekasi", "Depok", "Wakanda", "Asgard", "wkwk land", "kota di +62"]
    
    @IBOutlet weak var tblCity: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblCity.delegate = self
        tblCity.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell")
        
        cell?.textLabel?.text = city[indexPath.row]
        
        return cell!
    }


}

