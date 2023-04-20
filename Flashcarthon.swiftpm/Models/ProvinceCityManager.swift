import SwiftUI
//all of the picture below are taken from Oleh Oleh Uwe Dedering - Karya sendiri, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9506522 with modifications added. This photo is intended to be used for displaying Indonesia's Provinces and its Capital Cities.

class ProvinceCityManager: ObservableObject{
    
 let provinces = [
 //Sumatra (10)
    ProvinceCity(provinceName: "Nanggroe Aceh Darussalam", capitalCityName: "Banda Aceh", islandCategory: "Sumatra", image: "aceh"),
    ProvinceCity(provinceName: "Sumatra Utara (North Sumatra)", capitalCityName: "Medan", islandCategory: "Sumatra", image: "sumatra_utara"),
    ProvinceCity(provinceName: "Sumatra Barat (West Sumatra)", capitalCityName: "Padang", islandCategory: "Sumatra", image: "sumatra_barat"),
    ProvinceCity(provinceName: "Sumatra Selatan (South Sumatra)", capitalCityName: "Palembang", islandCategory: "Sumatra", image: "sumatra_selatan"),
    ProvinceCity(provinceName: "Bangka Belitung", capitalCityName: "Pangkal Pinang", islandCategory: "Sumatra", image: "bangka_belitung"),
    ProvinceCity(provinceName: "Bengkulu", capitalCityName: "Bengkulu", islandCategory: "Sumatra", image: "bengkulu"),
    ProvinceCity(provinceName: "Riau", capitalCityName: "Pekanbaru", islandCategory: "Sumatra", image: "riau"),
    ProvinceCity(provinceName: "Kepulauan Riau (Riau Islands)", capitalCityName: "Tanjung Pinang", islandCategory: "Sumatra", image: "kepulauan_riau"),
    ProvinceCity(provinceName: "Jambi", capitalCityName: "Jambi", islandCategory: "Sumatra", image: "jambi"),
    ProvinceCity(provinceName: "Lampung", capitalCityName: "Bandar Lampung", islandCategory: "Sumatra", image: "lampung"),

 //Java (6)
    ProvinceCity(provinceName: "Banten", capitalCityName: "Serang", islandCategory: "Java", image: "banten"),
    ProvinceCity(provinceName: "Jakarta", capitalCityName: "Jakarta", islandCategory: "Java", image: "jakarta"),
    ProvinceCity(provinceName: "Jawa Barat (West Java)", capitalCityName: "Bandung", islandCategory: "Java", image: "jawa_barat"),
    ProvinceCity(provinceName: "Jawa Tengah (Central Java)", capitalCityName: "Semarang", islandCategory: "Java", image: "jawa_tengah"),
    ProvinceCity(provinceName: "DI Yogyakarta (Yogyakarta Special Region)", capitalCityName: "Yogyakarta", islandCategory: "Java", image: "di_yogyakarta"),
    ProvinceCity(provinceName: "Jawa Timur (East Java)", capitalCityName: "Surabaya", islandCategory: "Java", image: "jawa_timur"),
 
//Lesser Sunda Islands (3)
    ProvinceCity(provinceName: "Bali", capitalCityName: "Denpasar", islandCategory: "Lesser Sunda Islands", image: "bali"),
    ProvinceCity(provinceName: "Nusa Tenggara Barat (West Nusa Tenggara)", capitalCityName: "Mataram", islandCategory: "Lesser Sunda Islands", image: "nusa_tenggara_barat"),
    ProvinceCity(provinceName: "Nusa Tenggara Timur (East Nusa Tenggara)", capitalCityName: "Kupang", islandCategory: "Lesser Sunda Islands", image: "nusa_tenggara_timur"),
 
//Borneo (5)
    ProvinceCity(provinceName: "Kalimantan Barat (West Kalimantan)", capitalCityName: "Pontianak", islandCategory: "Borneo", image: "kalimantan_barat"),
    ProvinceCity(provinceName: "Kalimantan Tengah (Central Kalimantan)", capitalCityName: "Palangka Raya", islandCategory: "Borneo", image: "kalimantan_tengah"),
    ProvinceCity(provinceName: "Kalimantan Selatan (South Kalimantan)", capitalCityName: "Banjarmasin", islandCategory: "Borneo", image: "kalimantan_selatan"),
    ProvinceCity(provinceName: "Kalimantan Timur (East Kalimantan)", capitalCityName: "Samarinda", islandCategory: "Borneo", image: "kalimantan_timur"),
    ProvinceCity(provinceName: "Kalimantan Utara (North Kalimantan)", capitalCityName: "Tanjung Selor", islandCategory: "Borneo", image: "kalimantan_utara"),
 
//Celebes (6)
    ProvinceCity(provinceName: "Sulawesi Utara (North Sulawesi)", capitalCityName: "Manado", islandCategory: "Celebes", image: "sulawesi_utara"),
    ProvinceCity(provinceName: "Gorontalo", capitalCityName: "Gorontalo", islandCategory: "Celebes", image: "gorontalo"),
    ProvinceCity(provinceName: "Sulawesi Tengah (Central Sulawesi)", capitalCityName: "Palu", islandCategory: "Celebes", image: "sulawesi_tengah"),
    ProvinceCity(provinceName: "Sulawesi Selatan (South Sulawesi)", capitalCityName: "Makassar", islandCategory: "Celebes", image: "sulawesi_selatan"),
    ProvinceCity(provinceName: "Sulawesi Barat (West Sulawesi)", capitalCityName: "Mamuju", islandCategory: "Celebes", image: "sulawesi_barat"),
    ProvinceCity(provinceName: "Sulawesi Tenggara (South East Sulawesi)", capitalCityName: "Kendari", islandCategory: "Celebes", image: "sulawesi_tenggara"),
 
//Maluku (2)
    ProvinceCity(provinceName: "Maluku", capitalCityName: "Ambon", islandCategory: "Maluku", image: "maluku"),
    ProvinceCity(provinceName: "Maluku Utara (North Maluku)", capitalCityName: "Sofifi", islandCategory: "Maluku", image: "maluku_utara"),
 
//Papua (6)
    ProvinceCity(provinceName: "Papua", capitalCityName: "Jayapura", islandCategory: "Papua", image: "papua"),
    ProvinceCity(provinceName: "Papua Barat (West Papua)", capitalCityName: "Manokwari", islandCategory: "Papua", image: "papua_barat"),
    ProvinceCity(provinceName: "Papua Barat Daya (North West Papua)", capitalCityName: "Sorong", islandCategory: "Papua", image: "papua_barat_daya"),
    ProvinceCity(provinceName: "Papua Pegunungan", capitalCityName: "Jayawijaya", islandCategory: "Papua", image: "papua_pegunungan"),
    ProvinceCity(provinceName: "Papua Selatan", capitalCityName: "Merauke", islandCategory: "Papua", image: "papua_selatan"),
    ProvinceCity(provinceName: "Papua Tengah", capitalCityName: "Nabire", islandCategory: "Papua", image: "papua_tengah")
 ]
 
 func getRandomProvince() -> (provinceName: String, capitalCityName: String, image: String) {
     let randomIndex = Int.random(in: 0..<provinces.count)
     let province = provinces[randomIndex]
     return (province.provinceName, province.capitalCityName, province.image)
 }
 func queryByIslandCategory(_ category: String) -> [(provinceName: String, capitalCityName: String, image: String)] {
        var results: [(provinceName: String, capitalCityName: String, image: String)] = []
        for province in provinces {
            if province.islandCategory == category || category == "All" {
                results.append((province.provinceName, province.capitalCityName, province.image))
            }
        }
        return results
    }
}
