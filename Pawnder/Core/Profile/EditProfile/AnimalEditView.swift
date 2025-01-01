//
//  AnimalEditView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/22/24.
//

import SwiftUI

struct AnimalEditView: View {
    @Environment(\.dismiss) var dismiss
    let model: CardModel
    @State private var name = ""
    @State private var age = ""
    @State private var weight = ""
    @State private var breed = ""
    @State private var gender = ""
    @State private var question1 = ""
    @State private var question2 = ""
    @State private var question3 = ""
    @State private var question4 = ""
    @State private var question5 = ""
    @State private var question6 = ""
    @State private var question7 = ""
    @State private var question8 = ""
    @State private var question9 = ""
    
    
    let animal: Animal
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(animal: animal, model: model)
                    .padding()
                
                VStack(spacing: 24) {

                    
                    VStack(alignment: .leading) {
                        
                        
                        Text("About your animal")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("Enter Name", text: $name, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        TextField("How old is your animal in years", text: $age, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        TextField("How much does your animal weigh in pounds?", text: $weight, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        TextField("What is the breed of your animal?", text: $breed, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        TextField("What is the gender of your animal?", text: $breed, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Questions:")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("What’s their favorite activity? (e.g., chasing balls, napping in the sun) ", text: $question1, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("If they could talk, what would they say all the time?", text: $question2, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("How do they greet you when you come home?", text: $question3, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("What’s their funniest quirk or habit?", text: $question4, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("What’s their favorite treat or snack?", text: $question5, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)

                        TextField("Do they get along with other animals?", text: $question6, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("How do they behave around new people?", text: $question7, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("Are they a social butterfly or a lone wolf?", text: $question8, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        TextField("What’s the coolest trick they’ve learned?", text: $question9, axis: .vertical)
                            .padding()
                            .frame(height:64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        
                        
                        
                    }
                }
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
    AnimalEditView(model: CardModel(animal: MockData.animals[1]), animal: MockData.animals[0])
}
