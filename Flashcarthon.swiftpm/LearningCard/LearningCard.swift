import SwiftUI

struct LearningCard: View {
    var province: String
    var capitalCity: String
//    var imageName: String
    
    var body: some View {
        HStack(spacing: 10) {
//            Image(imageName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 80, height: 80)
//                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5) {
                Text(province)
                    .font(.headline)
                
                Text(capitalCity)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
