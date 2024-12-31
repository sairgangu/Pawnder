//
//  FullNameView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/31/24.
//

import SwiftUI

struct FullNameView: View {
    @Environment(\.dismiss) var dismiss
    @State private var fullname = ""
    var body: some View {
       
        VStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("What's your full name?")
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack (alignment: .leading){
                    TextField("Enter Full Name", text: $fullname)
                    
                    Divider()
                    
                    
                    VStack(alignment: .leading){
                        Text("Can't change it later.")
                            .font(.footnote)
                            .fontWeight(.bold)
                    }
                    .padding(.top, 8)
                    .font(.footnote)
                    
                }
            }
            
            Spacer()
            
            Button {
                
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
    NavigationStack {
        FullNameView()
    }
}
