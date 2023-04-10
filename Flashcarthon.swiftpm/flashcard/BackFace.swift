import SwiftUI

struct BackFace : View {
    let width : CGFloat
    let height : CGFloat
//    let image: Image
    let question: String
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue.opacity(0.7), lineWidth: 3)
                .frame(width: width, height: height)
            //            Image()
            VStack{
                Text("Question")
                Text(question)
            }
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}
