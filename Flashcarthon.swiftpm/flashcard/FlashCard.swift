import SwiftUI

struct FlashCard: View {
    @State var flipBackDegree = 0.0
    @State var flipFrontDegree = -90.0
    @State var isCardFlipped = false
    
    let width : CGFloat = 400
    let height : CGFloat = 450
    let durationAndDelay : CGFloat = 0.3
    
    let question: String?
    let answer: String?
    let image: String
    
    func flipCard () {
        isCardFlipped = !isCardFlipped
        if isCardFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                flipBackDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                flipFrontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                flipFrontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                flipBackDegree = 0
            }
        }
    }
    
    var body: some View {
        ZStack {
            FrontFace(width: width, height: height, answer: answer,degree: $flipFrontDegree)
            BackFace(width: width, height: height, image:image, question: question, degree: $flipBackDegree)
        }.onTapGesture {
            flipCard()
        }
    }
}
