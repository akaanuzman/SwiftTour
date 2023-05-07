import SwiftUI

struct DefaultButton: View {
    var label : String
    var labelColor : Color?
    var bgColor : Color?
    var onTap : () -> Void
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Spacer()
                Text(label)
                Spacer()
            }.tint(labelColor ?? .white)
                .font(.title3)
                .bold()
                .padding(.all,PaddingEnum.all.normal.rawValue)
        }.buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(bgColor ?? Color.peach)
            .cornerRadius(RadiusEnum.normal.rawValue)
    }
}
    

struct DefaultButton_Previews: PreviewProvider {
    static var previews: some View {
        DefaultButton(label: "Default Btn", onTap: {})
    }
}
