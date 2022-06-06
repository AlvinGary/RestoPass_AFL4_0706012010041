//
//  LikeButton.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct LikeButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                    .labelStyle(.iconOnly)
                    .foregroundColor(isSet ? .red : .gray)
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(isSet: .constant(true))
    }
}
