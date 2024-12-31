//
//  AuthManager.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import Foundation

import FirebaseAuth

enum AuthType: Int, Identifiable {
    case createAccount
    case login
    
    var id: Int { return self.rawValue }
}

enum AuthState {
    case unauthenticated
    case authenticated(String)
}

@MainActor

class AuthManager: ObservableObject {
    @Published var authType: AuthType?
    @Published var authState: AuthState = .unauthenticated
    
    private let service: AuthServiceProtocol
    
    init(service: AuthServiceProtocol) {
        self.service = service
        
        if let currentUid = Auth.auth().currentUser?.uid {
            self.authState = .authenticated(currentUid)
        }
    }
    
    func authenticate(withEmail email: String, password: String) async {
        guard let authType else { return }
        do {
            switch authType {
            case .createAccount:
                let uid = try await service.createUser(withEmail: email, password: password)
                self.authState = .authenticated(uid)
            case .login:
                let uid = try await service.login(withEmail: email, password: password)
                self.authState = .authenticated(uid)

            }
        } catch {
            print("DEBUG: fai;led to0 auth: \(error)")
        }
    }
    
    func signOut()  {
        authState = .unauthenticated
        authType = nil
        service.signOut()
    }
}
