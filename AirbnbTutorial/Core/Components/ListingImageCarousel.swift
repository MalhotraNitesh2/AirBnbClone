//
//  ListingImageCarousel.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 24/10/23.
//

import SwiftUI

struct ListingImageCarousel: View {
    var images = [
    "listing-1",
    "listing2",
    "listing4",
    "listing5"
    ]
    var body: some View {
        TabView{
            ForEach(images,id:\.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousel()
}
