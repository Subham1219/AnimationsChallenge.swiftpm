import SwiftUI

struct FlippingView2: View {
    
    @State private var currentRotation = 0.0
    
    var body: some View {
        Button(action: {
            withAnimation {
                // MARK: Stretch #1 - Part II
                self.currentRotation += 360 // Rotate one time
            }
        }, label: {
            Text("Flips")
                .frame(width: 100, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                // MARK: Stretch #1 - Part III
                .rotationEffect(.degrees(currentRotation), anchor: .center)
        })
    }
}
