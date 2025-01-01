//
//  AnimalsListedView.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/21/24.
//



import SwiftUI

struct AnimalsListedView: View {

    
    
    let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(model.animal.profileImageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth/6, height: SizeConstants.cardHeight/6)
                    .padding(.horizontal, -SizeConstants.screenCutoffWidth)
                
                Text(model.animal.name)
                    .font(.title)
                    .fontWeight(.heavy)
                
                
                
                
            }
            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight/6)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .border(Color.black, width: 1)
            
            ZStack {
                Image(systemName: "pencil")
                    .imageScale(.small)
                    .foregroundStyle(.white)
                    .background {
                        Circle()
                            .fill(.black)
                            .frame(width:32, height: 32)
                    }
                    .padding(.horizontal, SizeConstants.screenCutoffWidth*2)
                
                    .padding()
            }
            
            
        }
        
        
        
    }
}




#Preview {
    AnimalsListedView(model: CardModel(animal: MockData.animals[1]))
}
