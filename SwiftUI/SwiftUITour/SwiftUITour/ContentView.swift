import SwiftUI

struct ContentView: View {
    
    enum MyStack {
    case HorizontalStack
    case VerticalStack
    }
    
    fileprivate func dynamicStackView(stackType: MyStack) -> some View {
        return VStack {
            Color.red.opacity(0.5)
            Spacer(minLength: 50)
            Text("hello world")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.red.opacity(0.5))
                .background(.pink.opacity(0.2))
            Spacer(minLength: 50)
            Circle()
                .foregroundColor(.red.opacity(0.5))
        }.padding()
    }
    
    var body: some View {
        dynamicStackView(stackType: MyStack.VerticalStack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
