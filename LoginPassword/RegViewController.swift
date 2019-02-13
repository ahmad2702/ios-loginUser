//
//  RegViewController.swift
//  LoginPassword
//
//  Created by Akhmad Sadullaev on 13.02.19.
//  Copyright © 2019 Akhmad Sadullaev. All rights reserved.
//

import UIKit

class RegViewController: UIViewController {
    
    let keyName = "singleAccount11119"
    
    @IBOutlet weak var nicknameField: UITextField!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    func regUser(name: String, login: String, pw: String){
        let user = [name, login, pw]
        
        var list = [[String]]()
        
        if(UserDefaults.standard.object(forKey: keyName) != nil){
            let user_daten = UserDefaults.standard.object(forKey: keyName)
            
            if var data = user_daten as? [[String]]{
                
                for i in data {
                    if(i[1] == login){
                        print("user exists")
                        return
                    }
                }
                data.append(user)
                list = data
            }
            
        }else{
            list.append(user)
        }
            
        
        UserDefaults.standard.set(list, forKey: keyName)
        
        nicknameField.text = ""
        loginField.text = ""
        passwordField.text = ""
        
        print("user ist regestriert!")
    }
    
    @IBAction func regButton(_ sender: Any) {
        
        let name = nicknameField.text ?? "leer"
        let login = loginField.text ?? "leer"
        let password = passwordField.text ?? "leer"
        
        if(name != "" && login != "" && password != ""){
            regUser(name: name, login: login, pw: password)
        }
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
