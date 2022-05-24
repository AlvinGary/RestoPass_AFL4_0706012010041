//
//  ContentView.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem() {
                    Image(systemName: "house")
                        .symbolRenderingMode(.monochrome)
                        .foregroundStyle(.brown)
                    Text("Home")
                }
            ListView()
                .tabItem() {
                    Image(systemName: "list.bullet")
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(Color.brown)
                    Text("List")
                }
            ProfileView()
                .tabItem() {
                    Image(systemName: "person")
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(Color.brown)
                    Text("Home")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
