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
    var textName: String
    
    var body: some View {
        HStack(spacing: 5) {
            TextField(textName, text: $field)
                .font(.system(size: 22))
                .background(Color.white)
                .frame(width: 343, height: 64)
            
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
