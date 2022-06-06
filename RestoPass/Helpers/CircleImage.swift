//
//  CircleImage.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 05/06/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color.strokeColor, lineWidth: 3)
            }
            .shadow(color: .strokeColor, radius: 6)
    }
}

struct CircleAccount: View {
    var img: Image

    var body: some View {
        img
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color.strokeColor, lineWidth: 1)
            }
            .shadow(color: .strokeColor, radius: 3)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("1.jpg"))
        CircleAccount(img: Image("A1.jpg"))
    }
}
