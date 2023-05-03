import Foundation

struct UserWrapperModel {
    var name : String
    @UpperCaseWrapper var surname : String
    @IntToStringWrapper var age : String
    var fullName : String {
        return "\(name) \(surname) \(age)"
    }
}
