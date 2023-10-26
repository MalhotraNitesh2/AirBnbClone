//
//  profileOptionRearView.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 25/10/23.
//

import SwiftUI

struct profileOptionRearView: View {
    
    let imageName: String
    let title: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    profileOptionRearView(imageName:"gear", title:"Settings")
}
