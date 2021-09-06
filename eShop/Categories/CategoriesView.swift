//
//  CaregotiesView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 31/08/21.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        ZStack {
            Color("backgrounnd")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 16) {
                NavigationLink(destination: Text("A"),
                               label: {
                                Text("View all Items")
                                    .frame(width: 343, height: 48)
                               })
                    .buttonStyle(PrimaryButtonStyle())
                
                Text("Choose category")
                    .foregroundColor(Color(#colorLiteral(red: 0.608, green: 0.608, blue: 0.608, alpha: 1))) // #9b9b9b
                
                List {
                    Text("Tops")
                    Text("Shirts & Blouses")
                }
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
