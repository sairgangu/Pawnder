//
//  CardStackView.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    @State private var isDraggable = true
    var body: some View {
       
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                ForEach(viewModel.cardModels) { card in
                        
                    CardView(model: card, isDraggable: $isDraggable)
                }
            }
            .scrollTargetBehavior(.paging)
//            .gesture(
//                    DragGesture()
//                        .onChanged { value in
//                            if abs(value.translation.height) > abs(value.translation.width) {
//                                isDraggable = false
//                            }
//                        }
//            )
        }
    }
}



#Preview {
    CardStackView()
}
