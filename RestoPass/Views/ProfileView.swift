//
//  ProfileView.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 24/05/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var modelData: ModelData
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color.tabViewBackground)
        UINavigationBar.appearance().backgroundColor = UIColor(Color.tabViewBackground)
    }
    
    var body: some View {
        NavigationView {
        VStack {
            SquareImage(square: Image("A1.jpg"))
            
            NavigationLink(destination: Login(), label: {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                    .foregroundColor(.plusColor)
                    .padding(.top, 15)
                    .navigationBarHidden(true)
            })
            
            Text("Alvin Gary")
                .font(.system(size: 32))
                .foregroundColor(.tvIcon)
                .underline()
                .shadow(color: .tvIcon, radius: 2, y: 2)
                .padding(.top, 5)
                .padding(.bottom, 2)
            
            Spacer()
            
                List {
                    FavoriteItemRow()
                        .aspectRatio(3 / 2, contentMode: .fit)
                        .listRowInsets(EdgeInsets())
                        .padding(.bottom, 8)
                    
                    AllItemRow()
                        .aspectRatio(3/2, contentMode: .fit)
                        .listRowInsets(EdgeInsets())
                }
                .navigationBarHidden(true)
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(ModelData())
    }
}
