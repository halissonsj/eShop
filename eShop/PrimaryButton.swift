//
//  PrimaryButton.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 28/08/21.
//

import SwiftUI

struct PrimaryButton: View {
    
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
        })
        .buttonStyle(PrimaryButtonStyle())
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 17, weight: .semibold))
            .frame(width: 343, height: 48)
            .background(Color(red: 0.859, green: 0.188, blue: 0.133))
            .foregroundColor(.white)
            .cornerRadius(24)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Button", action: {})
    }
}
