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
    let model: CardModel
    let user: User
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
                    if (user.animals.count < 6) {
                        Button() {
                            showAnimals.toggle()
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .foregroundStyle(Color(.blue))
                                .offset(x: 4, y: 4)
                                .frame(width: 50, height: 50)

                        }

                    }
                                    }
                .fullScreenCover(isPresented: $showAnimals) {
                    AnimalEditView(model: model, animal: model.animal)
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
    YourAnimalView(model: CardModel(animal: MockData.animals[1]), user: MockData.users[0])
}
