//
//  ContentView.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/24/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        Group {
            switch authManager.authState {
            case .unauthenticated:
                AuthenticationRootView()
                    .environmentObject(AuthDataStore())
                
            case .authenticated:
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
