import SwiftUI

class UserViewModel: ObservableObject {
    @Published var currentDate : Date = Date()
}
