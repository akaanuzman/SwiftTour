import SwiftUI

struct LocaleKeys {
    enum Auth : String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case email = "signInEmail"
    }
}

extension String {
    /// It localize any string from Localizable string
    /// - Returns: Localized Value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
