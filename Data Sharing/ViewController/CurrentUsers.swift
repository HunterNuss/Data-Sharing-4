//
//  CurrentUsers.swift
//  Data Sharing
//
//  Created by  on 1/9/18.
//  Copyright © 2018 Hunter. All rights reserved.
//

import UIKit
import Firebase

class CurrentUsers: UITableViewController {

//    let cellId = "cellId"
//    var users = [User]()
//    
//    override func viewDidLoad() {
//        // Create navigation Controller
//        tableView.register(UserCell.self, forCellReuseIdentifier: cellId)
//        fetchUser()
//    }
//    
//    func fetchUser() {
//        Database.database().reference().child("users").observe(.childAdded, with: { (snapshot) in
//    if let dictionary = snapshot.value as? [String: AnyObject] {
//                let user = User(dictionary: dictionary)
//                self.users.append(user)
//                
//                //this will crash because of background thread, so lets use dispatch_async to fix
//                DispatchQueue.main.async(execute: {
//                    self.tableView.reloadData()
//                })
//            }
////            if let dictionary = snapshot.value as? [String: AnyObject] {
////                let user = User(dictionary: dictionary)
////                user.setValuesForKeys(dictionary)
////                self.users.append(user)
////                DispatchQueue.main.async(execute: {
////                    self.tableView.reloadData()
////                })
//
//                //        Safe way to prevent crash
//                //        user.name = dictionary["name"]
//                //        user.email = dictionary["email"]
////            }
//            print(snapshot)
//        }, withCancel: nil)
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return users.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            //    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
//            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath as IndexPath)
//            let user = users[indexPath.row]
//            cell.textLabel?.text = user.name
//            cell.detailTextLabel?.text = user.email
//            return cell
//    }
//
//    
//    
//    class UserCell: UITableViewCell {
//        
//        override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//            super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
//        }
//        required init?(coder aDecoder: NSCoder) {
//            fatalError("init(coder:) has not been implemented")
//        }
//}
}
