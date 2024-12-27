//
//  CardsViewModel.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import Foundation

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() }
    }
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error)")
        }
    }
}
