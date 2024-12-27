import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var showProfileModel = false
    let model: CardModel
    let isDraggable: Bool

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(model.animal.profileImageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            UserInfoView(animal: model.animal)
        }
        .fullScreenCover(isPresented: $showProfileModel, content: { UserProfileView(animal: model.animal) })
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            isDraggable ?
                DragGesture()
                    .onChanged { value in
                        if abs(value.translation.width) > abs(value.translation.height) {
                            if value.translation.width < 0 {
                                xOffset = value.translation.width
                            }
                        }
                    }
                    .onEnded { value in
                        if abs(value.translation.width) > SizeConstants.screenCutoffWidth {
                            showProfileModel = true
                        }
                        xOffset = 0
                    }
                : nil
        )
    }
}

#Preview {
    CardView(model: CardModel(animal: MockData.animals[1]), isDraggable: true)
}

