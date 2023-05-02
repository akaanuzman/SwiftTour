import Foundation
import Alamofire

protocol IUserService {
    func fetchUsers() async -> UserModel?
}

class UserService: IUserService {
    
    func fetchUsers() async -> UserModel? {
        let request = AF.request(ServicePathEnum.users.toService()).serializingDecodable(UserModel.self)
        let response = await request.response
        response.error?.showError()
        return response.value
    }
}
