//
//  CurrentUserProfileHeaderView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/21/24.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    var user : User
    var body: some View {
        VStack {
            ZStack (alignment: .topTrailing ){
                Image(user.profileImageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width:120, height:120)
                    .clipShape(Circle())
                    .background {
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 128, height: 128)
                            .shadow (radius: 10)
                    }
                
                
            }
            Text("\(user.name)")
                .font(.title2)
                .fontWeight(.light)
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 240)
    }
}

#Preview {
    CurrentUserProfileHeaderView(user: MockData.users[0])
}
