//
//  AuthenticationRootView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import SwiftUI

struct AuthenticationRootView: View {
    @State private var showAuthFlow = false
    @EnvironmentObject var authManager: AuthManager
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 8){
                    
                }
                Spacer()
                
                VStack(spacing: 20) {
                    Button {
                        showAuthFlow.toggle()
                        authManager.authType = .createAccount
                    } label: {
                        Text("Create Account")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .frame(width: 340, height: 50)
                            .background(.white)
                            .clipShape(Capsule())
                        
                    }
                    Button {
                        showAuthFlow.toggle()
                        authManager.authType = .login
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 340, height: 50)
                        
                    }
                    .overlay {
                        Capsule()
                            .stroke(.white, lineWidth: 1.5)
                    }
                    
                    NavigationLink {
                        Text("forgot password")
                    } label: {
                        Text("Trouble singing in?")
                            .font(.headline)
                            .foregroundStyle(.white)
                    }
                    
                }
                
                
            }
            .fullScreenCover(item: $authManager.authType) { type in
                EmailView()
            }
//            .fullScreenCover(isPresented: $showAuthFlow) {
//                EmailView()
//            }
            .frame(maxWidth: .infinity)
            .background(.brown)
        }
    }
}



#Preview {
    AuthenticationRootView()
        .environmentObject(AuthManager(service: MockAuthService()))
}
