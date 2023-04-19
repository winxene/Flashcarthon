import SwiftUI

struct LearningCardView: View {
    let provinceCityManager = ProvinceCityManager()
    @State private var selectedRegion: String = "Sumatra"
    var body: some View {
        VStack {
            ButtonRow(selectedRegion: $selectedRegion, buttons: [
                ButtonInfo(title: "All", color: .black),
                ButtonInfo(title: "Sumatra", color: .blue),
                ButtonInfo(title: "Java", color: .green),
                ButtonInfo(title: "Lesser Sunda Islands", color: .red),
                ButtonInfo(title: "Borneo", color: .orange),
                ButtonInfo(title: "Celebes", color: .brown),
                ButtonInfo(title: "Papua", color: .yellow)
            ], buttonWidth: 120, buttonHeight: 50)
            }
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

