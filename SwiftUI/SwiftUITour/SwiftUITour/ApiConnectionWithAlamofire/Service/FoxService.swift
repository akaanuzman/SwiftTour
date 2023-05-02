import Foundation
import Alamofire

protocol IFoxService {
    func fetchItem(path: EndPointEnum, onSuccess: @escaping (FoxModel,Bool) -> Void)
}

class FoxService: IFoxService {
    private let baseUrl : String = "https://randomfox.ca/"
    
    func fetchItem(path: EndPointEnum, onSuccess: @escaping (FoxModel,Bool) -> Void) {
        AF.request(baseUrl+EndPointEnum.floof.rawValue).responseDecodable(of: FoxModel.self,
            completionHandler: {
            response in
            guard let value = response.value else { return }
            onSuccess(value,true)
        })
    }
}
