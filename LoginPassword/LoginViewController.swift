//
//  LoginViewController.swift
//  LoginPassword
//
//  Created by Akhmad Sadullaev on 12.02.19.
//  Copyright © 2019 Akhmad Sadullaev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, AnmeldungProtocol {

    let keyName = "singleAccount11119"
    
    let notificationCenter = NotificationCenter.default
    let errorMeldung = Notification.Name("eingabeFehler")
    
    @IBOutlet weak var infoText: UILabel!
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @objc func setInfoText(){
        infoText.text = "Error! Bitte prüfen Sie ihre Eingabe!"
    }
    
    func anmelden() {
        let login = loginField.text
        let pw = passwordField.text
        
        if(login != "" && pw != ""){
            if(UserDefaults.standard.object(forKey: keyName) != nil){
                
                let user_daten = UserDefaults.standard.object(forKey: keyName)
                
                if let data = user_daten as? [[String]]{
                    
                    for i in data {
                        if(i[1] == login && i[2] == pw){
                            ActiveUser.name = i[0]
                            ActiveUser.login = i[1]
                            Switcher.openProfile()
                            return
                        }
                    }
                    
                }
                
            }
        }
        
        NotificationCenter.default.post(name: errorMeldung, object: nil)
    }
    
    @IBAction func anmeldenButton(_ sender: Any) {
        
        anmelden()
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myProtocolClass = AnmeldungView()
        myProtocolClass.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(setInfoText), name: errorMeldung, object: nil)
    }
    

}
