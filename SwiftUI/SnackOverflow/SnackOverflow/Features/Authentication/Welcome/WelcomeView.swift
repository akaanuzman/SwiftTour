import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(ImageEnum.imgJuice.rawValue).resizable()
            Color.black30
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Image(IconEnum.icon.appLogo.rawValue)
                    Spacer()
                    FacebookButton{}
                        .padding(.top,PaddingEnum.top.hight.rawValue)
                    GoogleButton{}
                    AppleButton{}
                    Divider().background(.white.opacity(0.3))
                        .frame(height: DividerSize.low.rawValue)
                        .padding(PaddingEnum.all.normal.rawValue)
                    EmailButton {}
                    Spacer().frame(height: geometry.dh(height: 0.05))
                }.padding(PaddingEnum.all.normal.rawValue)
            }
           
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().ignoresSafeArea(.all)
    }
}
