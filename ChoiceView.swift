import SwiftUI

struct ChoiceView: View {
    
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        Image(systemName: "questionmark.circle.fill")
            .font(.largeTitle)
            .rotationEffect(.degrees(rotationAngle))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1.0)) {
                    // Rotate 180 degrees when tapped
                    rotationAngle += 180
                }
            }
    }
}
