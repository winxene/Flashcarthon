import SwiftUI
import PlaygroundSupport

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
              HomeView()
                .onAppear {
                    UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                }
        }
    }
}
