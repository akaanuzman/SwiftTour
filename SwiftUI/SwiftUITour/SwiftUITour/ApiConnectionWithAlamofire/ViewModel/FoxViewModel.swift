import Foundation

class FoxViewModel: ObservableObject {
    @Published var fox: FoxModel?
    @Published var isComplated: Bool?
    private let service: IFoxService
    
    init(fox: FoxModel? = nil, isComplated: Bool? = nil, service: IFoxService) {
        self.fox = fox
        self.isComplated = isComplated
        self.service = service
        fetchFox()
    }
    
    func fetchFox() {
        service.fetchItem(path: .floof) { (data, isComplated) in
            self.isComplated = isComplated
            self.fox = data
        }
    }
}
