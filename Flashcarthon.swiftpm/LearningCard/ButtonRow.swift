import SwiftUI
struct ButtonRow: View {
    @Binding var selectedRegion: String
    let buttons: [ButtonInfo]
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(buttons, id: \.title) { button in
                Button(action: { selectedRegion = button.title }) {
                    VStack {
                        Image("\(button.image)")
                            .resizable()
                            .frame(width: 32, height: 32)
                        Text(button.title)
                            .font(.system(size: 10))
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(5)
                    }
                }
                .frame(width: 100, height: 60) 
                .background(Color.brown)
                .cornerRadius(20)
            }
        }
        .frame(height: 60) 
        .padding(.horizontal)
    }
}
