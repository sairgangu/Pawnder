//
//  PawnderApp.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/24/24.
//

import SwiftUI

@main
struct PawnderApp: App {
    @StateObject var authManager = AuthManager(service: MockAuthService())
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authManager)
        }
    }
}
