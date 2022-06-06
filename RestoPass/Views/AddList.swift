//
//  AddList.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct AddList: View {
    @State var namacafe: String = ""
    @State var rating: String = ""
    @State var details: String = ""
    @State var address: String = ""
    
    var body: some View {
        VStack {
            SquareImage(square: Image("A3.jpg"))
            
            Spacer()
            
            TextField("Masukkan Nama Cafe", text: $namacafe)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300, height: 50)
                .multilineTextAlignment(.center)
                .font(.system(size: 20))
                .shadow(color: .tvIcon, radius: 2, y: 2)
            
            Spacer()
            
            TextField("Masukkan Rating (1.0 - 5.0)", text: $rating)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300, height: 50)
                .multilineTextAlignment(.center)
                .font(.system(size: 20))
                .shadow(color: .tvIcon, radius: 2, y: 2)
            Spacer()
            
            TextField("Masukkan Details", text: $details)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300, height: 50)
                .multilineTextAlignment(.center)
                .font(.system(size: 20))
                .shadow(color: .tvIcon, radius: 2, y: 2)
            Spacer()
            
            TextField("Masukkan Address", text: $namacafe)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300, height: 50)
                .multilineTextAlignment(.center)
                .font(.system(size: 20))
                .shadow(color: .tvIcon, radius: 2, y: 2)
            Spacer()
            
            
        }
    }
}

struct AddList_Previews: PreviewProvider {
    static var previews: some View {
        AddList()
    }
}
