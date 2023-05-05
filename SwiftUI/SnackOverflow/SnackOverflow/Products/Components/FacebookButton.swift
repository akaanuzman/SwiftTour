import Foundation
import SwiftUI

struct FacebookButton: View {
    var onTap : () -> Void
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(IconEnum.facebook.rawValue)
                Text(StringEnum.signInWithFacebook.rawValue)
                Spacer()
            }.tint(.white)
                .background(Color.deepSkyeBlue)
        }.buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
    }
}
