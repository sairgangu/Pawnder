//
//  CardService.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import Foundation


struct CardService {
    
    func fetchCardModels() async throws -> [CardModel] {
        let animals = MockData.animals
        return animals.map({ CardModel(animal: $0) })
    }
}
