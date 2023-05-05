import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .titleStyle()
            Text("Hello World!").modifier(CustomLargeTitle(shadowRadius: .small))
        }
    }
}

struct CustomLargeTitle : ViewModifier {
    
    let shadowRadius : Shadows
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .shadow(radius: shadowRadius.rawValue)
            .bold()
    }
}

enum Shadows : Double {
    case small = 2.0
    case medium = 4.0
    case hight = 8.0
    
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
