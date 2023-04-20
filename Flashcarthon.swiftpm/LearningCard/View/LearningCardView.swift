import SwiftUI

struct LearningCardView: View {
    let provinceCityManager = ProvinceCityManager()
    @State private var selectedRegion: String = "Sumatra"
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var columns: [GridItem] {
        if horizontalSizeClass == .compact {
            return [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        } else {
            return [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        }
    }

    var body: some View {
        VStack {
            //all of the picture below are taken from https://www.youtube.com/watch?v=DYndZw5f_8M with modifications added.
            ButtonRow(selectedRegion: $selectedRegion, buttons: [
                ButtonInfo(title: "All", image: "island_all"),
                ButtonInfo(title: "Sumatra", image: "island_sumatra"),
                ButtonInfo(title: "Java", image: "island_java"),
                ButtonInfo(title: "Lesser Sunda Islands", image: "lesser_sunda_islands"),
                ButtonInfo(title: "Borneo", image: "island_borneo"),
                ButtonInfo(title: "Celebes", image: "island_celebes"),
                ButtonInfo(title: "Papua", image: "island_papua")
            ])
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(provinceCityManager.queryByIslandCategory(selectedRegion), id: \.provinceName)
                    {province in
                        LearningCard(province: province.provinceName, capitalCity: province.capitalCityName, image: province.image)
                    }
                }
                .padding()
            }
        }
    }
}
