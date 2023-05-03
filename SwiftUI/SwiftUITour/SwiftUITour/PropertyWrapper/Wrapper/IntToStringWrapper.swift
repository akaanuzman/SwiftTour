import Foundation

@propertyWrapper struct IntToStringWrapper {
    var wrappedValue: String {
        didSet {
            wrappedValue = Int(wrappedValue)?.description ?? ""
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = Int(wrappedValue)?.description ?? ""
    }
}
