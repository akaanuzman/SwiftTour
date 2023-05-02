import Foundation


class UserViewModel: ObservableObject {
    let userService: IUserService
    
    @Published var user: UserModel?
    
    init(userService: IUserService, user: UserModel? = nil) {
        self.userService = userService
        self.user = user
        Task.detached {
            await self.fetchWholeItems()
        }
    }
    
    func fetchWholeItems() async {
        user = await userService.fetchUsers()
    }
}
