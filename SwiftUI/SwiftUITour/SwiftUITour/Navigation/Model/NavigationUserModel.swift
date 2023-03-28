import Foundation

struct NavigationUserModel : Identifiable {
    let id : UUID = UUID()
    let name: String
}

extension NavigationUserModel {
    static var users : [NavigationUserModel] = [
        NavigationUserModel(name: "k"),
        NavigationUserModel(name: "k1"),
        NavigationUserModel(name: "k2"),
        NavigationUserModel(name: "k3"),
        NavigationUserModel(name: "k4"),
        NavigationUserModel(name: "k5"),
        NavigationUserModel(name: "k6")
    ]
}
