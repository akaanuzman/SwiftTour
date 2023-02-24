import Foundation

struct TweetModel : Identifiable {
    let id : UUID = UUID()
    var image : String?
    let name : String?
    let userName : String?
    let content : String?
    var retweetCount : Int?
    var favoriteCount : Int?
}

extension TweetModel {
    static let tweets = [
        TweetModel(image: "https://pbs.twimg.com/profile_images/1569507512247881728/KUlvCOZU_400x400.jpg",
                   name: "kaan",userName: "akaandev", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", retweetCount: 1, favoriteCount: 22),
        TweetModel(image: "https://pbs.twimg.com/profile_images/1594411253274902528/unV9a5t0_400x400.jpg",
                   name: "tuce",userName: "onlyliberosis", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", retweetCount: 50, favoriteCount: 2500),
        TweetModel(image: "https://pbs.twimg.com/profile_images/1509340693956861953/8xDGlT75_400x400.jpg",
                   name: "Veli",userName: "10VBacik", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", retweetCount: 10, favoriteCount: 250),
        TweetModel(image: "https://pbs.twimg.com/profile_images/1464752821258104836/JaPwMbgC_400x400.jpg",
                   name: "kaan",userName: "akaanuzmann", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        TweetModel(image: "https://pbs.twimg.com/profile_images/1575505024163135490/OuhAL-lQ_400x400.jpg",
                   name: "Alperen ",userName: "alperenakrslaan", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
       fakeTweet,
    ]
    
    static let fakeTweet =
        TweetModel(name: "user",userName: "random user", content: "random user test tweet")
}
