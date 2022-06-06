//
//  Resto.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 31/05/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Resto: Hashable, Codable, Identifiable {
    var id: Int
    var nama_cafe: String
    var rating: Float
    var address: String
    var details: String
    var isFavorite: Bool
    var isBad: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
