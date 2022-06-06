//
//  ContentView.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 23/05/22.
//

import SwiftUI
import UIKit

extension Color {
    static let tabViewBackground = Color("tabViewBackground")
    static let bgColor = Color("Background")
    static let tvIcon = Color("tabViewIconColor")
    static let strokeColor = Color("strokeColor")
    static let starColor = Color("starColor")
    static let plusColor = Color("plusColor")
    static let itemColor = Color("ListItemBackground")
}

//extension View {
//    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
//        clipShape( RoundedCorner(radius: radius, corners: corners) )
//    }
//}

//struct RoundedCorner: Shape {
//
//    var radius: CGFloat = .infinity
//    var corners: UIRectCorner = .allCorners
//
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        return Path(path.cgPath)
//    }
//}

    //.cornerRadius(20, corners: [.topLeft, .topRight])

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.tabViewBackground)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.strokeColor)
    }
    
    var body: some View {
        
        return TabView {
            HomeView()
            
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home")
                
                }
            ProfileView()
                .tabItem() {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
