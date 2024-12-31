//
//  AuthService.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import Foundation

import FirebaseAuth

struct AuthService: AuthServiceProtocol {
    func createUser(withEmail email: String, password: String) async throws -> String {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        return result.user.uid
    }
    
    func login(withEmail email: String, password: String) async throws -> String {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        return result.user.uid
    }
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("DEBUG failed to sign out")
        }
    }
}
