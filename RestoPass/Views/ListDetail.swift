//
//  ListDetail.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 28/05/22.
//

import SwiftUI

struct ListDetail: View {
    @EnvironmentObject var modelData: ModelData
    var resto: Resto
    
    var restoIndex: Int {
        modelData.restolists.firstIndex(where: { $0.id == resto.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: resto.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: resto.image)
                    .offset(y: -180)
                    .padding(.bottom, -200)
                    
                VStack(alignment: .center) {
                        Text(resto.nama_cafe)
                            .font(.system(size: 45, weight: .semibold))
                            .foregroundColor(.tvIcon)
                            .shadow(color: .tvIcon, radius: 3, y: 3)
                        .padding(.bottom, 5)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.orange)
                        Text(String(resto.rating))
                            .font(.system(size: 20))
                            .foregroundColor(.starColor)
                        LikeButton(isSet: $modelData.restolists[restoIndex].isFavorite)
                            .padding(.leading, 30)
                    }.padding(.bottom, 10)
                    
                    Text(resto.details)
                        .font(.system(size: 18))
                        .foregroundColor(.tvIcon)
                        .frame(width: 340, alignment: .leading)
                        .padding(.bottom, 10)
                    }
                }
            Spacer()
        }
    }
}

struct ListDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        ListDetail(resto:
            modelData.restolists[0])
            .environmentObject(modelData)
    }
}
