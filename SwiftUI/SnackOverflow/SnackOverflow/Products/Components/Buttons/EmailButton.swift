import SwiftUI

struct EmailButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Auth.email.rawValue.locale())
                Spacer()
            }.tint(Color.peach)
                .font(.title3)
                .bold()
                .padding(.all,PaddingEnum.all.normal.rawValue)
        }.buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(.white)
            .cornerRadius(RadiusEnum.normal.rawValue)
    }
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton {}
    }
}
