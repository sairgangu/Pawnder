//
//  EmailView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/27/24.
//

import SwiftUI

struct PasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authManager: AuthManager
    @EnvironmentObject var authDataStore: AuthDataStore

   
    var body: some View {

        
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Your password?")
                    .fontWeight(.bold)
                    .font(.title)
                
                Text(subtitle)
                
                SecureField("Enter email", text: $authDataStore.password)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .keyboardType(.emailAddress)
                
                Divider()
                
            }
            .navigationBarBackButtonHidden()
            .padding()
            
            Spacer()
            
            Button {
                Task { await authManager.authenticate(withEmail: authDataStore.email, password: authDataStore.password) }
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

private extension PasswordView {
    var subtitle: String {
        guard let authType = authManager.authType else { return "" }
        
        switch authType {
        case .createAccount:
            return "Don't lose access to your account, add your password"
        case .login:
            return "Enter the password associated with your account to log back in"
        }
    }
}

#Preview {
    PasswordView()
}
