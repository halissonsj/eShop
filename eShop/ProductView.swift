//
//  ProductView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 25/08/21.
//

import SwiftUI

struct ProductView: View {
    
    var name: String
    var author: String
    var imageName: String
    var ratingImageName: String
    var price: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .frame(width: 148, height: 183)
                .cornerRadius(5)
            
            Image(ratingImageName)
                .resizable()
                .frame(width: 95, height: 14)
            
            Text(author)
                .font(.system(size: 11))
                .foregroundColor(Color(red: 0.608, green: 0.608, blue: 0.608)) // #9b9b9b)
            
            Text(name)
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133))
            
            Text("\(price)$")
                .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133)) // #222222)
            
        }
        .padding(.leading, 16)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(name: "Nome", author: "Author", imageName: "pinkDress1", ratingImageName: "fiveStars", price: "12")
    }
}
