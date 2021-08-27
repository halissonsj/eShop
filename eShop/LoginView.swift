//
//  LoginView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 27/08/21.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login = ""
    @State private var state: AuthTextFieldStates = .idle
    @State private var password = ""
    
    var body: some View {
        
//        NavigationView {
//
//            TextField("email", text: $login)
//
//                .navigationTitle("Login")
//        }
        
        AuthTextFieldView(field: $login, state: $state, textName: "email")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
