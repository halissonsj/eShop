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
            
            Color("background")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Image("bannerHome2")
                        .resizable()
                        .frame(height: 536)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("Fashion\n Sale")
                                    .foregroundColor(.white)
                                    .font(.system(size: 48, weight: .bold))
                                NavigationLink(
                                    destination: Text("Check Sale"),
                                    label: {
                                        Text("Check")
                                            .frame(width: 160, height: 36)
                                    })
                                    .buttonStyle(PrimaryButtonStyle())
                            }
                            .padding(), alignment: .bottomLeading)
                    
                    HomeTitleView(title: "Sales", subTitle: "Super Summer Sale")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products) { product in
                                NavigationLink(
                                    destination: Text("detail of \(product.name)"),
                                    label: {
                                        ProductView(name: product.name,
                                                    author: product.author,
                                                    imageName: product.imageName,
                                                    ratingImageName: product.ratingImageName,
                                                    price: product.price)
                                    })
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
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
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
