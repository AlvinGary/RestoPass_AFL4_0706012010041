//
//  AllItemRow.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct AllItemRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("All List")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(.tvIcon)
                    .shadow(color: .tvIcon, radius: 3, y: 2)
                Image(systemName: "list.bullet")
                    .imageScale(.large)
                    .foregroundColor(.tvIcon)
                    .shadow(color: .tvIcon, radius: 3, y: 2)
            }.padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(modelData.restolists) { resto in
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

struct AllItemRow_Previews: PreviewProvider {
    static var previews: some View {
        AllItemRow()
            .environmentObject(ModelData())
    }
}
