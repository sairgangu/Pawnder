//
//  UserInfoView.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/25/24.
//

import SwiftUI

struct UserInfoView: View {
    
    let animal: Animal
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(animal.name)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(animal.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
            }
            
            Text("testbio.......")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding(.vertical, 20)
        .padding(.horizontal)
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
        
    }
}

#Preview {
    UserInfoView(animal: MockData.animals[1])
}
