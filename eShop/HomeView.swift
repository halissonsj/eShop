//
//  HomeView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 24/08/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Image("BannerHome")
                    .resizable()
                    .frame(height: 196)
                    .overlay(Text("Street clothes")
                                .font(.system(size: 34, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .padding()
                             , alignment: .bottomLeading)
                    
                Text("Sales")
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133))
                    .padding(.leading, 16)
                
                Text("Super Summer Sale")
                    .font(.system(size: 11))
                    .foregroundColor(Color(red: 0.608, green: 0.608, blue: 0.608)) // #9b9b9b)
                    .padding(.leading, 16)
                
                VStack(alignment: .leading) {
                    Image("pinkDress1")
                        .resizable()
                        .frame(width: 148, height: 183)
                    
                    Text("Dorothy Perkins")
                        .font(.system(size: 11))
                        .foregroundColor(Color(red: 0.608, green: 0.608, blue: 0.608)) // #9b9b9b)
                    
                    Text("Evening Dress")
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133))
                    
                    Text("12$")
                        .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133)) // #222222)
                        
                }
                .padding(.leading, 16)
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
