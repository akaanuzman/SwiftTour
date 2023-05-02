import Foundation

enum ServicePathEnum : String {
    case users = "users"
    
    func toService() -> String {
        return "https://reqres.in/api/\(rawValue)"
    }
}
