import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "")
    
    func showError() {
        AFError.logger.error("\(errorDescription?.description ?? "")")
    }
}
