import SwiftUI

struct LearningCardView: View {
    let provinceCityManager = ProvinceCityManager()
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                ForEach(provinceCityManager.provincesAndCapitals.sorted(by: <), id: \.key) { province, capital in
                    LearningCard(province: province, capitalCity: capital)
                }
                .padding()
            }
        }
    }
}
