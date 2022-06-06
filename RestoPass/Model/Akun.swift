//
//  Akun.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 05/06/22.
//

import Foundation
import SwiftUI

struct Accounts: Decodable {
    let accounts: [Akun]
}

struct Akun: Hashable, Codable, Identifiable {
    var id: Int
    var nama: String
    var email: String
    var password: String
    
    private var img: String
    var image: Image {
        Image(img)
    }
}

let accounts: Accounts = load("account-data.json")
