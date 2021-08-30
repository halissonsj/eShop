//
//  AuthTextFieldView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 27/08/21.
//

import SwiftUI

enum AuthTextFieldStates {
    case idle
    case success
    case errored
}

struct AuthTextFieldView: View {
    
    @Binding var field: String
    @Binding var state: AuthTextFieldStates
    var title: String
    
    var body: some View {
        HStack(spacing: 5) {
            TextField(title, text: $field)
                .textFieldStyle(AuthTextFieldStyle())
                .font(.system(size: 22))
                .background(Color.white)
                .cornerRadius(5)
                .padding(.horizontal, 16)
                .shadow(color: .gray, radius: 1, x: 0.25, y: 0.25)
            
            if state == .success {
                Image("icon_check")
                    .resizable()
                    .frame(width: 35, height: 35)
            } else if state == .errored {
                Image("icon_error")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
        }
    }
}

private struct AuthTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(25)
    }
}
