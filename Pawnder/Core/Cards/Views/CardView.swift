import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var dragDirection: DragDirection? = nil
    @State private var showProfileModel = false
    let model: CardModel
    @Binding var isDraggable: Bool

    enum DragDirection {
        case horizontal
        case vertical
    }

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
        .simultaneousGesture(
            DragGesture()
                .onChanged { value in
                    // Detect drag direction
                    if dragDirection == nil {
                        dragDirection = abs(value.translation.width) > abs(value.translation.height) ? .horizontal : .vertical
                        isDraggable = dragDirection == .horizontal
                    }

                    if dragDirection == .horizontal && isDraggable {
                        // Handle horizontal drag
                        if value.translation.width < 0 {
                            xOffset = value.translation.width
                        }
                    }
                }
                .onEnded { value in
                    if dragDirection == .horizontal && isDraggable {
                        // Reset card on drag release
                        if abs(value.translation.width) > SizeConstants.screenCutoffWidth {
                            showProfileModel = true
                        }
                        xOffset = 0
                    }
                    // Reset state
                    dragDirection = nil
                    isDraggable = true
                }
        )
    }
}


/*
#Preview {
    CardView(model: CardModel(animal: MockData.animals[1]), isDraggable: true)
}
 */

