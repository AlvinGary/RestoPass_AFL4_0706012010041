//
//  SquareImage.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct SquareImage: View {
    var square: Image
    
    var body: some View {
        square
            .frame(width: 180, height: 180)
            .cornerRadius(50)
            .shadow(color: .strokeColor, radius: 5, x: 2, y: 4)
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(square: Image("A1.jpg"))
    }
}
