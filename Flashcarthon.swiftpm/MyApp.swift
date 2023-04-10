import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            FlashCard(question: "What is the capital city of France", answer: "Paris")
            FlashCard(question: "What is the capital city of Italy", answer: "Rome")
        }
    }
}

struct Previews_MyApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
