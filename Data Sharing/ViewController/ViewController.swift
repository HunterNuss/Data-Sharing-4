//
//  ViewController.swift
//  Data Sharing
//
//  Created by Christopher Walter on 11/15/17.
//  Copyright © 2017 Hunter. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var slideOutMenu: UIView!
    @IBOutlet weak var menuConstraint: NSLayoutConstraint!
    
    var isSlideMenuHidden = true

    
    var settings = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        menuConstraint.constant = -180
        
        
        checkIfUserIsLoggedIn()
    }

    @IBAction func slideOutMenuButton(_ sender: UIBarButtonItem) {
        if isSlideMenuHidden {
            menuConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            menuConstraint.constant = -180
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        isSlideMenuHidden = !isSlideMenuHidden
       
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
    
    
    @IBAction func signOutButton(_ sender: UIButton) {
        let loginViewController = LoginViewController()
        present(loginViewController, animated: true, completion: nil)
        
    }
    
    func checkIfUserIsLoggedIn() {
        if Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        } else {
            let uid = Auth.auth().currentUser?.uid
            Database.database().reference().child("users").child(uid!).observeSingleEvent(of: .value, with: { (snapshot) in

                if let dictionary = snapshot.value as? [String: AnyObject] {
                    self.navigationItem.title = dictionary["name"] as? String
                }
            }, withCancel: nil)
        }
    }

    @objc func handleLogout() {
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
    }

//        let loginController = LoginViewController()
//        present(loginController, animated: true, completion: nil)

    }
    
    
}
    



