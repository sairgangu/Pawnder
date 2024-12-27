//
//  AnimalEditView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/22/24.
//

import SwiftUI

struct AnimalEditView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                
                
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Animal")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .topBarLeading){
                    Button() {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .imageScale(.large)
                            .fontWeight(.bold)
                    }
                }
                
                ToolbarItem (placement: .topBarTrailing){
                    Button("Save") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AnimalEditView()
}
