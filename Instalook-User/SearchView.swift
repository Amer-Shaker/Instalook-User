//
//  SearchView.swift
//  Instalook-User
//
//  Created by jets on 5/31/19.
//  Copyright © 2019 Instalook. All rights reserved.
//

import Foundation

protocol SearchView: class {
    func showIndicator()
    func hideIndicator()
    func fetchingDataSuccess(salon : Salon)
    func showError(error: String)
}
