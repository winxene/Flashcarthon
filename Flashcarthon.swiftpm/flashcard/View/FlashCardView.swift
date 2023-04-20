import SwiftUI

struct FlashCardView: View {
    @State var currentCardIndex = 0
    @StateObject var provinceCityManager = ProvinceCityManager()
    
    var body: some View {
        VStack {
            Text("Flash Cards")
                .font(.largeTitle)
                .padding()
            TabView(selection: $currentCardIndex){
                ForEach(0..<10) { _ in
                    let randomProvince = provinceCityManager.getRandomProvince()
                    FlashCard(question: "What is the capital city of \(randomProvince.provinceName)?", answer: randomProvince.capitalCityName, image: randomProvince.image)
                        .padding()
                }
            }.tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        }
    }
}
