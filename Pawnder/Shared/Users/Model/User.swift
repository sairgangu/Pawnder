//
//  User.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import Foundation


struct User: Identifiable, Codable, Hashable {
    
    let id: String
    let name: String
//    let email: String
    var animals: [Animal]
    
    
    
    
    
}
