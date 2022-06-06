//
//  RestoPassApp.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 23/05/22.
//

import SwiftUI

@main
struct RestoPassApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
