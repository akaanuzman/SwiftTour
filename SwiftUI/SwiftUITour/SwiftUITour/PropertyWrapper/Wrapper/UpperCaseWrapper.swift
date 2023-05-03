import Foundation

@propertyWrapper struct UpperCaseWrapper {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
