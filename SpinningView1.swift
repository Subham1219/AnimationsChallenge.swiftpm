import SwiftUI

struct SpinningView1: View {
    
    @State private var currentDegree = 0.0
    
    var body: some View {
        Button("Spins") {
            withAnimation(.easeIn(duration: 1.0)) {
                // MARK: MVP - Part I
                self.currentDegree += 360 // Rotate one time
            }
        }
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        // MARK: MVP - Part II
        .rotationEffect(.degrees(currentDegree))
    }
}
