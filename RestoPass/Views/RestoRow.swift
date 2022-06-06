//
//  ListRow.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 29/05/22.
//

import SwiftUI

struct RestoRow: View {
    var resto: Resto
    
    var body: some View {
        HStack {
            resto.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(15)
            Text(resto.nama_cafe)
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.tvIcon)
                .frame(width: 180, height: 50, alignment: .leading)

            Spacer()
            
            if resto.isFavorite {
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundColor(.red)
            }
            if resto.isBad {
                Image(systemName: "hand.thumbsdown.fill")
                    .imageScale(.large)
                    .foregroundColor(.black)
            } else {
                Image(systemName: "hand.thumbsdown")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }
        }
        .padding(.top, 15)
        .padding(.bottom, 15)
        
    }
}

struct RestoRow_Previews: PreviewProvider {
    static var restolists = ModelData().restolists
    
    static var previews: some View {
        RestoRow(resto: restolists[0])
            .previewLayout(.fixed(width: 330, height: 80))
    }
}
