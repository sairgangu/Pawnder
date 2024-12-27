//
//  CardModel.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import Foundation


struct CardModel {
    let animal: Animal
}


extension CardModel: Identifiable {
    var id: String { return animal.id}
}


