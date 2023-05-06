import SwiftUI

struct OnboardView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("img_shop")
            Text("Deliver on the promise of time.")
            Spacer()
            HStack {
                Rectangle()
                Rectangle()
                Rectangle()
            }.frame(height: 20)
            DefaultButton(label: "Get started", onTap: {})
        }.padding(PaddingEnum.all.normal.rawValue)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
