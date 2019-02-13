//
//  AnmeldungProtocol.swift
//  LoginPassword
//
//  Created by Akhmad Sadullaev on 13.02.19.
//  Copyright © 2019 Akhmad Sadullaev. All rights reserved.
//

import UIKit

class AnmeldungView: UIView {

    var delegate: AnmeldungProtocol?
    
    func anmeldungStarten(){
        delegate?.anmelden()
    }

}
