import SwiftUI
import Kingfisher

struct KingfisherView: View {
    let imageUrl : String = "https://picsum.photos/500"
    var body: some View {
        CircleImageView(imageUrl: imageUrl, imageDescription: "City View")
    }
}

struct KingfisherView_Previews: PreviewProvider {
    static var previews: some View {
        KingfisherView()
    }
}
