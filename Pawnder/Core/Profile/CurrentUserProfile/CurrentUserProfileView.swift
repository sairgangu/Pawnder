//
//  CurrentUserProfileView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/21/24.
//

import SwiftUI



struct CurrentUserProfileView: View {
    @State private var showAnimals = false
    @State private var showEditProfile = false
    let user: User
    var body: some View {
        NavigationStack{
            List {
                // header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                    
                // account info
                Section("Account Information") {
                    HStack {
                        Text("Name ")
                        
                        Spacer()
                        
                        Text(user.name)
                    }
                    
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text("test@gmail.com")
                    }
                }
                // legal
                Section("Legal") {
                    Text("Terms of Service")
                }
                
                //dogs
                
                Section("My pets") {
                    Button("Manage Pets") {
                        print("hi")
                    } 
                    
                }
                
                .onTapGesture {
                    showAnimals.toggle()
                }
                
                // logout/ delete
                Section {
                    Button("Logout") {
                        print("DEBUG: Logout here.....")
                        
                    }
                }
                .foregroundStyle(.red)
                Section {
                    Button("Delete Account") {
                        print("DEBUG: delete here....")
                    }
                }
                .foregroundStyle(.red)
                
                
                
            }
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView()
            }
            .fullScreenCover(isPresented: $showAnimals) {
                YourAnimalView()
            }
            
        }
       
    }
        
}



#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
