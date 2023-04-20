import SwiftUI

class ProvinceCity {
    var provinceName: String
    var capitalCityName: String
    var islandCategory: String
    var image: String
    
    init(provinceName: String, capitalCityName: String, islandCategory: String, image: String) {
        self.provinceName = provinceName
        self.capitalCityName = capitalCityName
        self.islandCategory = islandCategory
        self.image = image
    }
}
