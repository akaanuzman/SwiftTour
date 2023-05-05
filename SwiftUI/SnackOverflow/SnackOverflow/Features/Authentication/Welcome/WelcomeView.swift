import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(ImageEnum.imgJuice.rawValue).resizable()
            Color.black30
            VStack {
                Image(IconEnum.appLogo.rawValue)
                FacebookButton(onTap: {}).padding(.top,40)

            }.padding(10)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
    }
}
