//
//  UserProfileView.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/28/24.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    let animal: Animal
    
    var body: some View {
        NavigationView {
            TabView {
                InfoView(animal: animal)
                    .tabItem {
                        Image(systemName: "pencil")
                    }
                    .tag(0)
                
                
                Text("picture/video View")
                    .tabItem {
                        Image(systemName: "camera")
                    }
                    .tag(2)
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


#Preview {
    UserProfileView(animal: MockData.animals[0])
}


