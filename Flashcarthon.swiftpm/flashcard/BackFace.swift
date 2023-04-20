import SwiftUI

struct BackFace : View {
    let width : CGFloat
    let height : CGFloat
    let image: String
    let question: String?
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.brown.opacity(0.7), lineWidth: 3)
                .frame(width: width, height: height)
            VStack{
                Image("\(image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                Text("Question:").font(.headline).padding(.bottom, 8)
                Text(question!)
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
            }
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}
