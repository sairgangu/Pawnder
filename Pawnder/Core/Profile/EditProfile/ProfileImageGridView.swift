//
//  ProfileImageGridView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/22/24.
//

import SwiftUI

struct ProfileImageGridView: View {
    let animal: Animal
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(0 ..< 6) {index in
                if index < animal.postedImageURLS.count {
                    Image(animal.postedImageURLS[index])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110, height: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.secondarySystemBackground))
                            .frame(width: 110, height: 160)
                        
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color(.pink))
                            .offset(x: 4, y: 4)
                        

                    }
                }
            }
        }
    }
}

private extension ProfileImageGridView {
    private var columns: [GridItem]  {
        [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    }
}
#Preview {
    ProfileImageGridView(animal: MockData.animals[0])
}
