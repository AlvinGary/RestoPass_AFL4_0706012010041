//
//  FavoriteItemRow.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct FavoriteItemRow: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredResto: [Resto] {
        modelData.restolists.filter { resto in (!showFavoritesOnly || resto.isFavorite)
            
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Favorite")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(.tvIcon)
                    .shadow(color: .tvIcon, radius: 3, y: 2)
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .shadow(color: .red, radius: 3, y: 2)
            }.padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(filteredResto) { resto in
                        NavigationLink {
                            ListDetail(resto: resto)
                        } label : {
                            FavoriteItem(resto: resto)
                        }
                    }
                }
            }
            .frame(height: 200)
        }
        .frame(height: 280)
    }
}

struct FavoriteItemRow_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteItemRow()
            .environmentObject(ModelData())
    }
}
