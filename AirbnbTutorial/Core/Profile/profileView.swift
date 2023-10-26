//
//  profileView.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 25/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            VStack(alignment:.leading, spacing:32){
                VStack(alignment: .leading,spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                Button("Log in"){
                    print("login")
                }
                .foregroundColor(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360,height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
            }
            
            //profile login view
            VStack(spacing:24){
                profileOptionRearView(imageName: "gear", title: "Settings")
                profileOptionRearView(imageName: "gear", title: "Settings")
                profileOptionRearView(imageName: "questionmark.circle", title: "visit help center")
                
            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
