import SwiftUI
//The map asset is taken from this repository
//Link TBA
class ProvinceCityManager {
    let provincesAndCapitals = [
        "Aceh": "Banda Aceh",
        "Bali": "Denpasar",
        "Bangka Belitung": "Pangkal Pinang",
        "Banten": "Serang",
        "Bengkulu": "Bengkulu",
        "Gorontalo": "Gorontalo",
        "Jakarta": "Jakarta",
        "Jambi": "Jambi",
        "Jawa Barat": "Bandung",
        "Jawa Tengah": "Semarang",
        "Jawa Timur": "Surabaya",
        "Kalimantan Barat": "Pontianak",
        "Kalimantan Selatan": "Banjarmasin",
        "Kalimantan Tengah": "Palangkaraya",
        "Kalimantan Timur": "Samarinda",
        "Kalimantan Utara": "Tanjung Selor",
        "Kepulauan Riau": "Tanjung Pinang",
        "Lampung": "Bandar Lampung",
        "Maluku": "Ambon",
        "Maluku Utara": "Sofifi",
        "Nusa Tenggara Barat": "Mataram",
        "Nusa Tenggara Timur": "Kupang",
        "Papua": "Jayapura",
        "Papua Barat": "Manokwari",
        "Papua Barat Daya": "Sorong",
        "Papua Pegunungan": "Jayawijaya",
        "Papua Selatan": "Merauke",
        "Papua Tengah": "Nabire",
        "Riau": "Pekanbaru",
        "Sulawesi Barat": "Mamuju",
        "Sulawesi Selatan": "Makassar",
        "Sulawesi Tengah": "Palu",
        "Sulawesi Tenggara": "Kendari",
        "Sulawesi Utara": "Manado",
        "Sumatera Barat": "Padang",
        "Sumatera Selatan": "Palembang",
        "Sumatera Utara": "Medan",
    ]
    
    func getRandomProvince() -> (province: String, capital: String) {
        let index = Int.random(in: 0..<provincesAndCapitals.count)
        let province = Array(provincesAndCapitals.keys)[index]
        let capital = Array(provincesAndCapitals.values)[index]
        return (province, capital)
    }
}
