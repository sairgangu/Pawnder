//
//  AuthService.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import Foundation


struct AuthService: AuthServiceProtocol {
    func createUser(withEmail email: String, password: String) async throws -> String {
        return NSUUID().uuidString
    }
    func login(withEmail email: String, password: String) async throws -> String {
        return NSUUID().uuidString

    }
    func signOut() {
        
    }
}
