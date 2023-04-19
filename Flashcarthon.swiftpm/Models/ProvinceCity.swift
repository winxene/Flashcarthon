import SwiftUI

class ProvinceCity {
    var provinceName: String
    var capitalCityName: String
    var islandCategory: String
    var image: Image
    
    init(provinceName: String, capitalCityName: String, islandCategory: String, image: Image) {
        self.provinceName = provinceName
        self.capitalCityName = capitalCityName
        self.islandCategory = islandCategory
        self.image = image
    }
}
