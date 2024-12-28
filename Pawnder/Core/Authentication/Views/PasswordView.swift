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
    @State private var password = ""
    @State private var email = "test@gmail.com"
    var body: some View {

        
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Your password?")
                    .fontWeight(.bold)
                    .font(.title)
                
                Text("Don't lose access to your account, add your password")
                
                SecureField("Enter email", text: $password)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .keyboardType(.emailAddress)
                
                Divider()
                
            }
            .navigationBarBackButtonHidden()
            .padding()
            
            Spacer()
            
            Button {
                Task { await authManager.authenticate(withEmail: email, password: password) }
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

#Preview {
    PasswordView()
}
