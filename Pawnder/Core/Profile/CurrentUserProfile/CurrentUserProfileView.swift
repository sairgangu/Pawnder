//
//  CurrentUserProfileView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/21/24.
//

import SwiftUI



struct CurrentUserProfileView: View {
    @EnvironmentObject var authManager: AuthManager
    @State private var showAnimals = false
    let model: CardModel

    let user: User
    let animal: Animal
    var body: some View {
        NavigationStack{
            List {
                    
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
                        authManager.signOut()                    }
                }
                .foregroundStyle(.red)
                Section {
                    Button("Delete Account") {
                        print("DEBUG: delete here....")
                    }
                }
                .foregroundStyle(.red)
                
                
                
            }
          
            .fullScreenCover(isPresented: $showAnimals) {
                YourAnimalView(model: model, user: user)
            }
            
        }
       
    }
        
}



#Preview {
    CurrentUserProfileView(model: CardModel(animal: MockData.animals[1]), user: MockData.users[0], animal: MockData.animals[0])
}
