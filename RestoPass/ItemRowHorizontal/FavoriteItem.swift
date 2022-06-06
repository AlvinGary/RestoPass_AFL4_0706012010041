//
//  FavoriteItem.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct FavoriteItem: View {
    var resto: Resto
    
    var body: some View {
        VStack(alignment: .center) {
            resto.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 170, height: 150)
                .cornerRadius(20)
            Text(resto.nama_cafe)
                .foregroundColor(.tvIcon)
                .font(.system(size: 16, weight: .bold))
            Text(resto.address)
                .foregroundColor(.tvIcon)
                .font(.system(size: 15))
        }
        .frame(width: 200, height: 200, alignment: .center)
        .padding(.top, 5)
    }
}

struct FavoriteItem_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteItem(resto: ModelData().restolists[0])
    }
}
