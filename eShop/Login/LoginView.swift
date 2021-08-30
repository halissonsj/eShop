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
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(Color("background"))
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                Color("background")
                    .ignoresSafeArea()
                
                VStack(spacing: 15) {
                    AuthTextFieldView(field: $login, state: $state, title: "Email")
                        .navigationTitle("Login")
                    
                    AuthTextFieldView(field: $password, state: $state, title: "Senha")
                    
                    SecondaryButton(text: "Esqueceu sua senha?", action: {
                        //route
                    })
                    
                    PrimaryButton(text: "LOGIN", action: {
                        //route
                    })
                    
                    Spacer()
                    
                    Text("Ou logue com sua conta")
                    
                    HStack(spacing: 16) {
                        AuthBottomButton(imageName: "google_icon", action: {})
                        
                        AuthBottomButton(imageName: "fb_icon", action: {})
                    }
                    .padding(.bottom, 40)
                }
                .padding(.top, 70)
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

struct AuthBottomButton: View {
    
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {}, label: {
            Image(imageName)
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.vertical, 20)
                .padding(.horizontal, 30)
                .background(Color.white)
                .cornerRadius(15)
        })
    }
}
