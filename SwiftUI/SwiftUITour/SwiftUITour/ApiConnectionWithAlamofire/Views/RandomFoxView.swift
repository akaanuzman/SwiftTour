import SwiftUI
import Kingfisher
import ActivityIndicatorView

struct RandomFoxView: View {
    @StateObject var foxViewModel : FoxViewModel = FoxViewModel(service: FoxService())
    var body: some View {
        VStack {
            AppBarView(foxViewModel: foxViewModel)
            Spacer()
            if foxViewModel.isComplated ?? false {
                FoxImageView(url: foxViewModel.fox?.image)
            } else {
                DotsIndicatorView()
            }
        }
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}

struct AppBarView: View {
    let foxViewModel : FoxViewModel
    var body: some View {
        HStack {
            Text("Foxs").font(.title)
            Spacer()
            Button {
                foxViewModel.fetchFox()
            } label: {
                Image(systemName: "arrow.clockwise")
            }
        }.padding()
    }
}

struct DotsIndicatorView: View {
    var body: some View {
        ActivityIndicatorView(isVisible: .constant(true), type: .opacityDots())
    }
}

struct FoxImageView: View {
    let url : String?
    var body: some View {
        VStack {
            KFImage(URL(string: url ?? ""))
            Spacer()
        }
    }
}
