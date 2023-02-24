import SwiftUI

struct TweetListView: View {
    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
            .fontWeight(.bold)
            List(TweetModel.tweets) {
                tweet in
                TweetView(tweet: tweet)
            }.listStyle(.inset)
        }
    }
}

struct TweetListView_Previews: PreviewProvider {
    static var previews: some View {
        TweetListView()
    }
}
