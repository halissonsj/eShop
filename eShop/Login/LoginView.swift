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
        
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack {
                    AuthTextFieldView(field: $login, state: $state, textName: "Email")
                        .navigationTitle("Login")
                    
                    AuthTextFieldView(field: $password, state: $state, textName: "Senha")
                    
                    SecondaryButton(text: "Esqueceu sua senha?", action: {
                        //route
                    })
                    
                    PrimaryButton(text: "LOGIN", action: {
                        //route
                    })
                }
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct SecondaryButton: View {
    
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            HStack {
                Spacer()
                Text(text)
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133))
                
                Image("rigth_arrow_red")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
        })
        .padding(.trailing, 16)
    }
}
