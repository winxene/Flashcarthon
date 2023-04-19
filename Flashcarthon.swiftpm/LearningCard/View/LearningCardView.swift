import SwiftUI

struct LearningCardView: View {
    let provinceCityManager = ProvinceCityManager()
    @State private var selectedRegion: String = "Sumatra"
    var body: some View {
        VStack {
            ButtonRow(selectedRegion: $selectedRegion, buttons: [
                ButtonInfo(title: "All", image: "island_all"),
                ButtonInfo(title: "Sumatra", image: "island_sumatra"),
                ButtonInfo(title: "Java", image: "island_java"),
                ButtonInfo(title: "Lesser Sunda Islands", image: "lesser_sunda_islands"),
                ButtonInfo(title: "Borneo", image: "island_borneo"),
                ButtonInfo(title: "Celebes", image: "island_celebes"),
                ButtonInfo(title: "Papua", image: "island_papua")
            ], buttonWidth: 80, buttonHeight: 50)
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

