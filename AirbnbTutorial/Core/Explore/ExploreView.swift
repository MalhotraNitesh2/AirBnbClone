//
//  ExploreView.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 24/10/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinantionView = false
    var body: some View {
        NavigationStack{
            if showDestinantionView{
                DestinationSearchView(show:$showDestinantionView)
            }
            else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinantionView.toggle()
                            }
                        }
                    LazyVStack(spacing:32){
                        ForEach(0...10,id:\.self){listing in
                            NavigationLink(value: listing) {
                                ListingItemsView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self){ listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                    
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
