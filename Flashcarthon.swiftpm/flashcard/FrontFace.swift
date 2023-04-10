import SwiftUI

struct FrontFace: View {
    let width: CGFloat
    let height: CGFloat
    let answer: String?
    @Binding var degree: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: width, height: height)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)
            VStack {
                Text("Answer:").font(.headline).padding(.bottom, 8)
                Text(answer!)
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
            }
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}
