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
                        VStack{
                            Image("\(button.image)").resizable().frame(width: 32, height: 32)
                            Text(button.title)
                                .font(.system(size: 12))             .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                    }.frame(width: 80).cornerRadius(20).background(.brown)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: buttonHeight)
    }
}
