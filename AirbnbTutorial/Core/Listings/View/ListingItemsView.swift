//
//  ListingItemsView.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 24/10/23.
//

import SwiftUI


struct ListingItemsView: View {
    
    var body: some View {
        VStack(spacing:8){
            //images
           ListingImageCarousel()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            
            //listing details
            HStack(alignment:.top){
                //deatils
                VStack(alignment:.leading){
                    Text("Miami,Florida")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                    Text("12 Mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                    
                }
                Spacer()
                //rating
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
            
            }
            .font(.footnote)
        }
        
    }
}

#Preview {
    ListingItemsView()
}
