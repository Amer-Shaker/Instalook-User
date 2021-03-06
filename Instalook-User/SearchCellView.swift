//
//  SearchCellView.swift
//  Instalook-User
//
//  Created by jets on 5/27/19.
//  Copyright © 2019 Instalook. All rights reserved.
//

import Foundation

protocol SearchCellView{
    func displayName(name: String)
    func displayAddress(address: String)
    func displayImage(image: String)
    func displayRate(rate: Int)
}
