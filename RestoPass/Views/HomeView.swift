//
//  HomeView.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 24/05/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color.tabViewBackground)
        UINavigationBar.appearance().backgroundColor = UIColor(Color.tabViewBackground)
    }
    
    var filteredResto: [Resto] {
        modelData.restolists.filter { resto in (!showFavoritesOnly || resto.isFavorite)
            
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                CircleAccount(img: Image("A1.jpg"))
                
                Text("Hello, Alvin!")
                    .frame(width: 250, height: 50, alignment: .leading)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.tvIcon)
                    .padding(.leading, 5)
            }
            .padding(.top,35)
            .padding(.bottom, 20)
            
            Text("Where do you want to go?")
                .frame(width: 300, height: 100, alignment: .leading)
                .foregroundColor(.tvIcon)
                .shadow(color: .tvIcon, radius: 2, y: 2)
                .font(.system(size: 34, weight: .bold))
            
            NavigationView {
                List() {
                    Toggle(isOn:$showFavoritesOnly){
                        Text("Favorites only")
                    }
                    
                    ForEach(filteredResto) {resto in
                            NavigationLink{
                                ListDetail(resto: resto)
                            } label: {
                                RestoRow(resto: resto)
                            }
                        }
                    .navigationTitle("Restaurants List")
                }
            }
            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
