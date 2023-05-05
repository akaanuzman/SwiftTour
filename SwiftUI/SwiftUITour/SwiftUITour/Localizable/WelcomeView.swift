import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text(LocalKeys.welcome.rawValue)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().environment(\.locale, .init(identifier: ProjectLanguages.tr.rawValue))
    }
}
