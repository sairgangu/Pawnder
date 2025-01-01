//
//  MockData.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import Foundation


struct MockData {
    
    static let users: [User] = [
        .init(id: NSUUID().uuidString, name: "Bob", animals: animals)
      
    ]
    
    static let animals: [Animal] = [
        .init(id: NSUUID().uuidString, name: "Rick", age: 2, profileImageURL: "dog1", postedImageURLS: ["dog1", "dog1", "dog1"] ),
        .init(id: NSUUID().uuidString, name: "Billy", age: 1, profileImageURL: "dog2", postedImageURLS: ["dog2", "dog2","sog2"] ),
        .init(id: NSUUID().uuidString, name: "Juan", age: 1, profileImageURL: "cat1", postedImageURLS: ["cat1", "cat1", "cat1"] )

    ]
        
    }

