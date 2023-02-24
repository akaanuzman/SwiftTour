import SwiftUI
import Kingfisher

struct TweetView: View {
    let tweet : TweetModel
    var body: some View {
        HStack(alignment: .top) {
            // Circle Avatar
            KFImage(URL(string: tweet.image ?? ""))
                .onFailureImage(KFCrossPlatformImage(systemName: "person.fill"))
                .resizable()
                .scaledToFit()
                .background(.gray)
                .clipShape(Circle())
            .frame(width: 64,height: 64)
            VStack(alignment: .leading) {
                HStack {
                    Text(tweet.name ?? "")
                        .bold()
                    Text("@\(tweet.userName ?? "")")
                        .foregroundColor(.gray)
                }
                Spacer().frame(height: 5.5)
                Text(tweet.content ?? "")
                Spacer().frame(height: 16)
                HStack {
                    // retweet section
                    HStack{
                        Image(systemName: "arrow.2.squarepath")
                            .foregroundColor(.green)
                        Text("\(tweet.retweetCount ?? 0)")
                            .foregroundColor(.green)
                    }
                    Spacer().frame(width: 28)
                    // fav section
                    HStack{
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                        Text("\(tweet.favoriteCount ?? 0)")
                            .foregroundColor(.pink)
                    }
                    Spacer().frame(width: 28)
                    Image(systemName: "square.and.arrow.up")
                }
            }
            Spacer()
        }
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView(tweet: TweetModel.tweets[0])
    }
}
