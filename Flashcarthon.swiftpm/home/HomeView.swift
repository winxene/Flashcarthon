import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Flashcarthon")
                    .font(.system(size: 48, weight: .bold)) 
                NavigationLink(destination: FlashCardView()) {
                    Text("Flashcards")
                        .font(.title)
                        .padding()
                        .background(Color.brown)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: LearningCardView()) {
                    Text("Learning Cards")
                        .font(.title)
                        .padding()
                        .background(Color.brown)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
        }
    }
}
