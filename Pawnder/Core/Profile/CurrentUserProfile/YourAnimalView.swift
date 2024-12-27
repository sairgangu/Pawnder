//
//  YourAnimalView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/21/24.
//


    

    

import SwiftUI



struct YourAnimalView: View {
    @State private var showAnimals = false
    @StateObject var viewModel = CardsViewModel(service: CardService())
    @Environment(\.dismiss) var dismiss
    @State private var isDraggable = true
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    ForEach(viewModel.cardModels) { card in
                        
                        AnimalsListedView(model: card)
                            .onTapGesture {
                                showAnimals.toggle()
                            }
                    }
                }
                .fullScreenCover(isPresented: $showAnimals) {
                    AnimalEditView()
                }
            }
            .navigationTitle("Edit Animal Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .topBarLeading){
                    Button() {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .imageScale(.large)
                            .fontWeight(.bold)
                    }
                }
                
            }
        }
    }
}




#Preview {
    YourAnimalView()
}
