import SwiftUI

struct AppleButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(IconEnum.social.apple.rawValue)
                Text(LocaleKeys.Auth.apple.rawValue.locale())
                Spacer()
            }.tint(.white)
                .font(.title3)
                .padding(.all,PaddingEnum.all.normal.rawValue)
        }.buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(.black)
            .cornerRadius(RadiusEnum.low.rawValue)
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton{}
    }
}
