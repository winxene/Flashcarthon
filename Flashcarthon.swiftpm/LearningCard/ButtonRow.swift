import SwiftUI

struct ButtonRow: View {
    @Binding var selectedRegion: String
    let buttons: [ButtonInfo]
    let buttonWidth: CGFloat
    let buttonHeight: CGFloat
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(buttons, id: \.title) { button in
                    Button(action: { selectedRegion = button.title }) {
                        Text(button.title)
                            .font(.title)
                            .frame(width: buttonWidth, height: buttonHeight)
                            .foregroundColor(.white)
                            .background(button.color)
                            .cornerRadius(10)
                    }
                }
            }
            .padding(.horizontal, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: buttonHeight)
    }
}
