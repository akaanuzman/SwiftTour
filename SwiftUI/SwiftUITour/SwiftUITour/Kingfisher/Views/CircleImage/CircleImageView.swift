import SwiftUI
import Kingfisher

struct CircleImageView: View {
    let imageUrl : String
    let imageDescription: String
    var body: some View {
        VStack {
            Spacer()
            KFImage(URL(string: imageUrl))
                .fade(duration: 1.0)
                .frame(width: 300,height: 300)
                .clipShape(Circle())
                .shadow(radius: 100)
            Text(imageDescription)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.gray).italic()
            Spacer()
        }.padding()
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(imageUrl: "https://picsum.photos/400",imageDescription: "Random Image")
    }
}
