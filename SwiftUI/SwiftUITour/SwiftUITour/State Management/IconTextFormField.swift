import SwiftUI

struct IconTextFormField: View {
    @State var txtController = ""
    var body: some View {
        ZStack {
            Color.blue.opacity(0.2)
                .ignoresSafeArea() // close the safe area section
            VStack() {
                TextField("SF Symbols name (moon exp.)", text: $txtController).textFieldStyle(.roundedBorder)
                    .foregroundColor(.blue)
                Image(systemName: txtController.lowercased())
                    .foregroundColor(.blue)
                    .font(.system(size: 32))
                    .padding()
            }.padding(32)
        }
    }
}

struct IconTextFormField_Previews: PreviewProvider {
    static var previews: some View {
        IconTextFormField()
    }
}
