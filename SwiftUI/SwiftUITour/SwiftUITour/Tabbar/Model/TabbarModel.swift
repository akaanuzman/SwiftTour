import Foundation

struct TabbarModel {
    let icon : String
    let label : String
    var tag : Int
}

enum TabbarTagEnum : Int {
    case home = 0
    case profile = 1
}

extension TabbarModel {
    static let tabs : [TabbarModel] = [
        TabbarModel(icon: "house.fill",
                    label: "Home",
                    tag: TabbarTagEnum.home.rawValue),
        TabbarModel(icon: "person.fill",
                    label: "Profile",
                    tag: TabbarTagEnum.profile.rawValue),
    ]
}
