import SwiftUI

struct LearningCard: View {
    var province: String
    var capitalCity: String
    var image: String    
    
    var body: some View {
        VStack(spacing: 10) {
            Image("\(image)")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
//                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5) {
                Text(province)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .frame(width: 100)
                Text(capitalCity)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(width: 100)
            }
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(width: 200)
    }
}
