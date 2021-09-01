//
//  HomeView.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 24/08/21.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .white
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            CategoriesView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Categories")
                }
        }
        .accentColor(Color(red: 0.859, green: 0.188, blue: 0.133))
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
