import SwiftUI

struct TextEditingView: View {
    @State private var text : String = ""
    var body: some View {
        VStack {
            TextEditor(text: $text).padding()
                .background(.yellow.opacity(0.2))
                .lineSpacing(10)
                .font(.footnote)
                .border(.yellow,width: 5)
                .padding()
        }
    }
}

struct TextEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditingView()
    }
}
