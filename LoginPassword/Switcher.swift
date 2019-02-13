//
//  Switcher.swift
//  LoginPassword
//
//  Created by Akhmad Sadullaev on 13.02.19.
//  Copyright © 2019 Akhmad Sadullaev. All rights reserved.
//

import Foundation
import UIKit

class Switcher {
    
    static func openProfile(){

        var rootVC : UIViewController?

        rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileView") as! ProfileViewController

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rootVC
        
    }
    
    static func closeProfile(){
        
        var rootVC : UIViewController?

        rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "naviControl") as! NaviController

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rootVC
        
    }
    
}
