//
//  InfoView.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/28/24.
//

import SwiftUI
struct InfoView: View {
    var animal: Animal
    var body: some View {
        ZStack(alignment: .top) {
            Image(animal.profileImageURL)
                .resizable()
                .scaledToFill()
                .frame(width: SizeConstants.cardWidth/5, height: SizeConstants.cardHeight/5)
                .padding(.vertical, -SizeConstants.screenCutoffHeight)
                .padding(.horizontal, -SizeConstants.screenCutoffWidth)
        }

    }
}

#Preview {
    InfoView(animal: MockData.animals[1])
}
