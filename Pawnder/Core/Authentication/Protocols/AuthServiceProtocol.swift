//
//  AuthServiceProtocol.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import Foundation

protocol AuthServiceProtocol {
    func createUser(withEmail email: String, password: String) async throws -> String
    func login(withEmail email: String, password: String) async throws -> String
    func signOut()
}
