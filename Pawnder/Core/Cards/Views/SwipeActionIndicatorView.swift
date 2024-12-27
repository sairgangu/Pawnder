//
//  SwipeActionIndicatorView.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/25/24.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    var body: some View {
        HStack{
            
            Spacer()

            ZStack {
               Circle()
                   .fill(Color.blue) // Circle color
                   .frame(width: 60, height: 60) // Circle size
                              Image(systemName: "arrow.right")
                   .font(.system(size: 30)) // Arrow size
                   .foregroundColor(.white) // Arrow color
           }
            
            .opacity(Double(xOffset / SizeConstants.screenCutoffWidth) * -1)
            
        }
        .padding(100)
        .padding(.vertical, 150)
    }
}


