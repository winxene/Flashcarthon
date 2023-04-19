import SwiftUI
//The map asset is taken from this repository
//Link TBA

/**
class ProvinceCityManager{
 let provinces: [Province] = [
 //Sumatra (10)
    ProvinceCity(provinceName: "Nanggroe Aceh Darussalam", capitalCityName: "Banda Aceh", islandCategory: "Sumatra", image: Image("aceh")),
    ProvinceCity(provinceName: "Sumatra Utara (North Sumatra)", capitalCityName: "Medan", islandCategory: "Sumatra", image: Image("sumatra_utara")),
    ProvinceCity(provinceName: "Sumatra Barat (West Sumatra)", capitalCityName: "Padang", islandCategory: "Sumatra", image: Image("sumatra_barat")),
    ProvinceCity(provinceName: "Sumatra Selatan (South Sumatra)", capitalCityName: "Palembang", islandCategory: "Sumatra", image: Image("sumatra_selatan")),
    ProvinceCity(provinceName: "Bangka Belitung", capitalCityName: "Pangkal Pinang", islandCategory: "Sumatra", image: Image("bangka_belitung")),
    ProvinceCity(provinceName: "Bengkulu", capitalCityName: "Bengkulu", islandCategory: "Sumatra", image: Image("bengkulu")),
    ProvinceCity(provinceName: "Riau", capitalCityName: "Pekanbaru", islandCategory: "Sumatra", image: Image("riau")),
    ProvinceCity(provinceName: "Kepulauan Riau (Riau Islands)", capitalCityName: "Tanjung Pinang", islandCategory: "Sumatra", image: Image("kepulauan_riau")),
    ProvinceCity(provinceName: "Jambi", capitalCityName: "Jambi", islandCategory: "Sumatra", image: Image("jambi")),
    ProvinceCity(provinceName: "Lampung", capitalCityName: "Bandar Lampung", islandCategory: "Sumatra", image: Image("lampung")),

// Java (6)
    ProvinceCity(provinceName: "Banten", capitalCityName: "Serang", islandCategory: "Java", image: Image("banten")),
    ProvinceCity(provinceName: "Jakarta", capitalCityName: "Jakarta", islandCategory: "Java", image: Image("jakarta")),
    ProvinceCity(provinceName: "Jawa Barat (West Java)", capitalCityName: "Bandung", islandCategory: "Java", image: Image("jawa_barat")),
    ProvinceCity(provinceName: "Jawa Tengah (Central Java)", capitalCityName: "Semarang", islandCategory: "Java", image: Image("jawa_tengah")),
    ProvinceCity(provinceName: "DI Yogyakarta (Yogyakarta Special Region)", capitalCityName: "Yogyakarta", islandCategory: "Java", image: Image("di_yogyakarta")),
    ProvinceCity(provinceName: "Jawa Timur (East Java)", capitalCityName: "Surabaya", islandCategory: "Java", image: Image("jawa_timur")),
 
 // Lesser Sunda Islands (3)
    ProvinceCity(provinceName: "Bali", capitalCityName: "Denpasar", islandCategory: "Lesser Sunda Islands", image: Image("bali")),
    ProvinceCity(provinceName: "Nusa Tenggara Barat (West Nusa Tenggara)", capitalCityName: "Mataram", islandCategory: "Lesser Sunda Islands", image: Image("nusa_tenggara_barat")),
    ProvinceCity(provinceName: "Nusa Tenggara Timur (East Nusa Tenggara)", capitalCityName: "Kupang", islandCategory: "Lesser Sunda Islands", image: Image("nusa_tenggara_timur")),
 
 //Borneo (5)
    ProvinceCity(provinceName: "Kalimantan Barat (West Kalimantan)", capitalCityName: "Pontianak", islandCategory: "Borneo", image: Image("kalimantan_barat")),
    ProvinceCity(provinceName: "Kalimantan Tengah (Central Kalimantan)", capitalCityName: "Palangka Raya", islandCategory: "Borneo", image: Image("kalimantan_tengah")),
    ProvinceCity(provinceName: "Kalimantan Selatan (South Kalimantan)", capitalCityName: "Banjarmasin", islandCategory: "Borneo", image: Image("kalimantan_selatan")),
    ProvinceCity(provinceName: "Kalimantan Timur (East Kalimantan)", capitalCityName: "Samarinda", islandCategory: "Borneo", image: Image("kalimantan_timur")),
    ProvinceCity(provinceName: "Kalimantan Utara (North Kalimantan)", capitalCityName: "Tanjung Selor", islandCategory: "Borneo", image: Image("kalimantan_utara")),
 
 //Celebes (6)
    ProvinceCity(provinceName: "Sulawesi Utara (North Sulawesi)", capitalCityName: "Manado", islandCategory: "Celebes", image: Image("sulawesi_utara")),
    ProvinceCity(provinceName: "Gorontalo", capitalCityName: "Gorontalo", islandCategory: "Celebes", image: Image("gorontalo")),
    ProvinceCity(provinceName: "Sulawesi Tengah (Central Sulawesi)", capitalCityName: "Palu", islandCategory: "Celebes", image: Image("sulawesi_tengah")),
    ProvinceCity(provinceName: "Sulawesi Selatan (South Sulawesi)", capitalCityName: "Makassar", islandCategory: "Celebes", image: Image("sulawesi_selatan")),
    ProvinceCity(provinceName: "Sulawesi Barat (West Sulawesi)", capitalCityName: "Mamuju", islandCategory: "Celebes", image: Image("sulawesi_barat")),
    ProvinceCity(provinceName: "Sulawesi Tenggara (South East Sulawesi)", capitalCityName: "Kendari", islandCategory: "Celebes", image: Image("sulawesi_tenggara")),
 
 //Maluku (2)
    ProvinceCity(provinceName: "Maluku", capitalCityName: "Ambon", islandCategory: "Maluku", image: Image("maluku")),
    ProvinceCity(provinceName: "Maluku Utara (North Maluku)", capitalCityName: "Sofifi", islandCategory: "Maluku", image: Image("maluku_utara")),
 
 //Papua (6)
    ProvinceCity(provinceName: "Papua", capitalCityName: "Jayapura", islandCategory: "Papua", image: Image("papua"))
    ProvinceCity(provinceName: "Papua Barat (West Papua)", capitalCityName: "Manokwari", islandCategory: "Papua", image: Image("papua_barat")),
    ProvinceCity(provinceName: "Papua Barat Daya (North West Papua)", capitalCityName: "Sorong", islandCategory: "Papua", image: Image("papua_barat_daya"))
    ProvinceCity(provinceName: "Papua Pegunungan", capitalCityName: "Jayawijaya", islandCategory: "Papua", image: Image("papua_pegunungan"))
    ProvinceCity(provinceName: "Papua Selatan", capitalCityName: "Merauke", islandCategory: "Papua", image: Image("papua_selatan"))
    ProvinceCity(provinceName: "Papua Tengah", capitalCityName: "Nabire", islandCategory: "Papua", image: Image("papua_tengah"))
 ]
 
 func getRandomProvince() -> (provinceName: String, capitalCity: String, image: Image) {
     let randomIndex = Int.random(in: 0..<provinces.count)
     let province = provinces[randomIndex]
     return (province.provinceName, province.capitalCityName, province.image)
 }
}
 */
















class ProvinceCityManager {
    let provincesAndCapitals = [
//Sumatra
        "Aceh": "Banda Aceh",        
        "Sumatera Utara": "Medan",
        "Sumatera Barat": "Padang",
        "Kepulauan Riau": "Tanjung Pinang",
        "Jambi": "Jambi",
        "Bangka Belitung": "Pangkal Pinang",
        "Bengkulu": "Bengkulu",
        "Riau": "Pekanbaru",
        "Sumatera Selatan": "Palembang",
        "Lampung": "Bandar Lampung",
//Java    
        "DKI Jakarta": "Jakarta",
        "DI Yogyakarta": "Yogyakarta",
        "Banten": "Serang",
        "Jawa Barat": "Bandung",
        "Jawa Tengah": "Semarang",
        "Jawa Timur": "Surabaya",
        "Bali": "Denpasar",
        "Nusa Tenggara Barat": "Mataram",
        "Nusa Tenggara Timur": "Kupang",
//Kalimantan (borneo)        
        "Kalimantan Barat": "Pontianak",
        "Kalimantan Selatan": "Banjarmasin",
        "Kalimantan Tengah": "Palangkaraya",
        "Kalimantan Timur": "Samarinda",
        "Kalimantan Utara": "Tanjung Selor",
//Sulawesi
        "Gorontalo": "Gorontalo",
        "Sulawesi Barat": "Mamuju",
        "Sulawesi Selatan": "Makassar",
        "Sulawesi Tengah": "Palu",
        "Sulawesi Tenggara": "Kendari",
        "Sulawesi Utara": "Manado",
//Maluku 
        "Maluku": "Ambon",
        "Maluku Utara": "Sofifi",
//Papua
        "Papua": "Jayapura",
        "Papua Barat": "Manokwari",
        "Papua Barat Daya": "Sorong",
        "Papua Pegunungan": "Jayawijaya",
        "Papua Selatan": "Merauke",
        "Papua Tengah": "Nabire",
    ]
    
    func getRandomProvince() -> (province: String, capital: String) {
        let index = Int.random(in: 0..<provincesAndCapitals.count)
        let province = Array(provincesAndCapitals.keys)[index]
        let capital = Array(provincesAndCapitals.values)[index]
        return (province, capital)
    }
}
