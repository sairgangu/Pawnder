//
//  EmailView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import SwiftUI

struct EmailView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authManager: AuthManager
    @EnvironmentObject var authDataStore: AuthDataStore

    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Your email?")
                        .fontWeight(.bold)
                        .font(.title)
                    
                    Text(subtitle)
                    
                    TextField("Enter email", text: $authDataStore.email)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)
                    
                    Divider()
                    
                }
                .padding()
                
                Spacer()
                
                NavigationLink {
                    PasswordView()
                } label: {
                    Text("Next")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(width:340, height:50)
                        .background(.brown)
                        .clipShape(Capsule())
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .imageScale(.large)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

private extension EmailView {
    var subtitle: String {
        guard let authType = authManager.authType else { return "" }
        
        switch authType {
        case .createAccount:
            return "Don't lose access to your account, add your email"
        case .login:
            return "Enter the email associated with your account to log back in"
        }
    }
}

#Preview {
    EmailView()
}
