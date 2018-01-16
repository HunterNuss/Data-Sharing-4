//
//  User.swift
//  Data Sharing
//
//  Created by  on 1/9/18.
//  Copyright © 2018 Hunter. All rights reserved.
//

import UIKit

class User: NSObject {

    var name: String?
    var email: String?
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
    }
}
