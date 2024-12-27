//
//  MockData.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/26/24.
//

import Foundation


struct MockData {
    
    static let users: [User] = [
        .init(id: NSUUID().uuidString, name: "Bob", profileImageURL: "bob")
      
    ]
    
    static let animals: [Animal] = [
        .init(id: NSUUID().uuidString, name: "Rick", age: 2, profileImageURL: "dog1", postedImageURLS: ["dog1", "dog2", "dog3", "cat1"] ),
        .init(id: NSUUID().uuidString, name: "Billy", age: 1, profileImageURL: "dog2", postedImageURLS: ["dog1", "dog2", "dog3", "cat1"] ),
        .init(id: NSUUID().uuidString, name: "Riley", age: 4, profileImageURL: "dog3", postedImageURLS: ["dog1", "dog2", "dog3", "cat1"] ),
        .init(id: NSUUID().uuidString, name: "Juan", age: 1, profileImageURL: "cat1", postedImageURLS: ["dog1", "dog2", "dog3", "cat1"] )

    ]
        
    }

