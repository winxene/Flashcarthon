import SwiftUI

@main
struct MyApp: App {

    var body: some Scene {
        WindowGroup {
//            let manager = ProvinceCityManager()
//            let randomProvince =  manager.getRandomProvince()
//            FlashCard(question: "What is the capital city of \(randomProvince.province)", answer: randomProvince.capital)
//            let randomProvince2 = manager.getRandomProvince()
//            FlashCard(question: "What is the capital city of \(randomProvince2.province)", answer: randomProvince2.capital)
            FlashCardView()
        }
    }
}
