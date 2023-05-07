import SwiftUI

struct FacebookButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(IconEnum.social.facebook.rawValue)
                Text(LocaleKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }.tint(.white)
                .font(.title3)
                .padding(.all,PaddingEnum.all.normal.rawValue)
        }.buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.deepSkyBlue)
            .cornerRadius(RadiusEnum.normal.rawValue)
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton {
            
        }
    }
}

