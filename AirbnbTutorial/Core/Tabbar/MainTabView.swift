//
//  MainTabView.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 25/10/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore",systemImage:"magnifyingglass") }
            WishlistView()
                .tabItem { Label("Wishlists",systemImage: "heart") }
            ProfileView()
                .tabItem { Label("profile",systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}

