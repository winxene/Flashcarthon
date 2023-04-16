import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                Text("Flashcarthon")
                    .font(.system(size: 60, weight: .bold))
                    .padding(.bottom, -10)
                Text("Indonesia's Provinces and Capital Cities").font(.system(size: 18, weight: .regular))
                Spacer()
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
                Text("Created by Winxen")
                Spacer()
            }
            .padding()
        }
    }
}
