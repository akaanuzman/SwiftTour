import Foundation
struct OnboardModel : Identifiable {
    var id : UUID = UUID()
    let imagePath : ImageEnum.onboard
    let description : String
    
    static let items : [OnboardModel] = [
        OnboardModel(imagePath: .imgHand, description: "Hand-pickle high quality snacks."),
        OnboardModel(imagePath: .imgShop, description: "Shop global. Mind-blownly affordable."),
        OnboardModel(imagePath: .imgDeliver, description: "Deliver on the promise of time.")
    ]
}
