import SwiftUI

struct GoogleButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(IconEnum.social.google.rawValue)
                Text(LocaleKeys.Auth.google.rawValue.locale())
                Spacer()
            }.tint(.black)
                .font(.title3)
                .padding(.all,PaddingEnum.all.normal.rawValue)
        }.buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(.white)
            .cornerRadius(RadiusEnum.low.rawValue)
    }
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButton {}
    }
}
