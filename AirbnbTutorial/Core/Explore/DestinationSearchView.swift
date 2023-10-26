//
//  DestinationSearchView.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 24/10/23.
//

import SwiftUI
enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedoption : DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    var body: some View {
        VStack{
            HStack{
                Button{
                    withAnimation(.snappy){
                        show.toggle()
                    }
                }label:{
                    Image(systemName:"xmark.circle")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Spacer()
                if !destination.isEmpty{
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundColor(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment:.leading){
                if selectedoption == .location{
                    Text("where to ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destinations",text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height:44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius:8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                else{
                    CollapseView(title: "Where", description: "Add destination")
                }

            }
            .padding()
            .frame(height:selectedoption == .location ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) { selectedoption = .location}
            }
            
            //date selection view
            VStack(alignment:.leading){
                if selectedoption == .dates{
                    Text("when's your Trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack(alignment : .leading){
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        
                        DatePicker("From", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }else{
                    CollapseView(title: "when", description: "Add dates")
                }
            }
            .padding()
            .frame(height:selectedoption == .dates ? 180 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation(.snappy) { selectedoption = .dates}
                }
            
            
            
            //num guests view
            VStack(alignment:.leading){
                if selectedoption == .guests{
                    Text("who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                   
                    Stepper("\(numGuests) Adults", value: $numGuests, in: 0...Int.max, step: numGuests + 1)

                }
                else{
                    CollapseView(title: "who", description: "Add guests")
                }
            }   .padding()
                .frame(height:selectedoption == .guests ? 120 :64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation(.snappy) { selectedoption = .guests}
                }
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapseView: View {
    let title : String
    let description: String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
