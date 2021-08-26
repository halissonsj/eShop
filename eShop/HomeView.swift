//
//  HomeView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 24/08/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        let products: [ProductModel] = ProductModelFactory.productList
        
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Image("BannerHome")
                        .resizable()
                        .frame(height: 196)
                        .overlay(Text("Street clothes")
                                    .font(.system(size: 34, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                                    .padding()
                                 , alignment: .bottomLeading)
                    
                    HomeTitleView(title: "Sales", subTitle: "Super Summer Sale")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products, id: \.id) { product in
                                ProductView(name: product.name,
                                            author: product.author,
                                            imageName: product.imageName,
                                            ratingImageName: product.ratingImageName,
                                            price: product.price)
                            }
                        }
                    }
                    
                    HomeTitleView(title: "New", subTitle: "You've never seen it before!")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products, id: \.id) { product in
                                ProductView(name: product.name,
                                            author: product.author,
                                            imageName: product.imageName,
                                            ratingImageName: product.ratingImageName,
                                            price: product.price)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HomeTitleView: View {
    
    var title: String
    var subTitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133))
                    .padding(.leading, 16)
                
                Text(subTitle)
                    .font(.system(size: 11))
                    .foregroundColor(Color(red: 0.608, green: 0.608, blue: 0.608)) // #9b9b9b)
                    .padding(.leading, 16)
            }
            Spacer()
            Text("View all")
                .font(.system(size: 11, weight: .semibold, design: .default))
                .padding(.trailing, 16)
        }
    }
}

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
