//
//  FriendsViewController.swift
//  Data Sharing
//
//  Created by  on 11/16/17.
//  Copyright © 2017 Hunter. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var settings = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = settings[indexPath.row]
        
        return cell
        
    }
    

}
