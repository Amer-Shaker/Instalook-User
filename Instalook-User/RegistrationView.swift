//
//  RegistrationView.swift
//  Instalook-User
//
//  Created by jets on 5/31/19.
//  Copyright © 2019 Instalook. All rights reserved.
//

import Foundation

protocol RegistrationView: class {
    
    func showIndicator()
    
    func hideIndicator()
    
    func register() -> Bool
    
    func success()
    
    func failed()
}
