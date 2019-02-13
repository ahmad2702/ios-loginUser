//
//  ProfileViewController.swift
//  LoginPassword
//
//  Created by Akhmad Sadullaev on 13.02.19.
//  Copyright © 2019 Akhmad Sadullaev. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var profileName: UILabel!
    
    @IBAction func logoutButton(_ sender: Any) {
        Switcher.closeProfile()
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileName.text = "Hallo, \(ActiveUser.name!)!"


    }
    


}
