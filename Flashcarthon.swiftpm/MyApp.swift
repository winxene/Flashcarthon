import SwiftUI

@main
struct MyApp: App {

    var body: some Scene {
        WindowGroup {
            let manager = ProvinceCityManager()
            let randomProvince =  manager.getRandomProvince()
            FlashCard(question: "What is the capital city of \(randomProvince.province)", answer: randomProvince.capital)
        }
    }
}
