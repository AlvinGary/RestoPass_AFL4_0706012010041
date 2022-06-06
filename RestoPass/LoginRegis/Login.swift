//
//  Login.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct Login: View {
    @State var email: String = ""
    @State var pass: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SquareImage(square: Image("A2.jpg"))
                    .padding(.bottom, 10)
                
                Text("Login")
                    .foregroundColor(.tvIcon)
                    .font(.system(size: 25, weight: .semibold))
                
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                    .shadow(color: .tvIcon, radius: 2, y: 2)
                    .padding()
                
                TextField("Password", text: $pass)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                    .shadow(color: .tvIcon, radius: 2, y: 2)
                    .padding()
                
                
                HStack {
                    Text("Don't have account?")
                    NavigationLink(destination: Register(), label: {
                        Text("Register")
                    }).navigationBarHidden(true)
                }
                .padding()
                
                NavigationLink(destination: ContentView(), label: {
                    Text("SUBMIT")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.tvIcon)
                }).navigationBarHidden(true)
                
                Spacer()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
