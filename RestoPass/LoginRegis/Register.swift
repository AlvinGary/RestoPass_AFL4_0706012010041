//
//  Register.swift
//  RestoPass
//
//  Created by SIFT - Telkom DBT Air 3 on 06/06/22.
//

import SwiftUI

struct Register: View {
    @State var user_regis: String = ""
    @State var email_regis: String = ""
    @State var pass_regis: String = ""
    @State var rep_pass_regis: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Register")
                    .foregroundColor(.tvIcon)
                    .font(.system(size: 35, weight: .semibold))
                    .padding(.top, 50)
                
                TextField("Name", text: $user_regis)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                    .shadow(color: .tvIcon, radius: 2, y: 2)
                    .padding()
                
                TextField("Email", text: $email_regis)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                    .shadow(color: .tvIcon, radius: 2, y: 2)
                    .padding()
                
                TextField("Password", text: $pass_regis)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                    .shadow(color: .tvIcon, radius: 2, y: 2)
                    .padding()
                
                TextField("Repeat Password", text: $rep_pass_regis)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                    .shadow(color: .tvIcon, radius: 2, y: 2)
                    .padding()
                
                HStack {
                    Text("Already have an account?")
                    NavigationLink(destination: Login(), label: {
                        Text("Login")
                    })
                    .navigationBarHidden(true)
                    
                }
                .padding()
                
                NavigationLink(destination: Login(), label: {
                    Text("SUBMIT")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.tvIcon)
                })
                .navigationBarHidden(true)
                
                
                Spacer()
            }
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
