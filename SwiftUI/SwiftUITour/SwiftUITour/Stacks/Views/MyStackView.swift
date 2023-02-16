import SwiftUI

struct MyStackView: View {
    enum MyStack {
        case HorizontalStack
        case VerticalStack
        case DefaultStack
    }
    
    fileprivate func dynamicStackView(stackType: MyStack) -> some View {
        switch stackType {
        case .VerticalStack:
            return AnyView(
                VStack {
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
                }.padding())
        case .HorizontalStack:
            return AnyView(
                HStack {
                    CustomHeadlineText(data: "Hello everyone!",
                                       fgColor: .pink,
                                       bgColor: .pink.opacity(0.5))
                    Spacer()
                    CustomHeadlineText(data: "I learn SwiftUI ",
                                       fgColor: .blue,
                                       bgColor: .blue.opacity(0.5))
                    Spacer()
                    CustomHeadlineText(data: "and and stack views",
                                       fgColor: .green,
                                       bgColor: .green.opacity(0.5))
                }.padding()
            )
        case .DefaultStack:
            return AnyView(
                ZStack {
                    Color.yellow
                        .opacity(0.5)
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 300)
                        .foregroundColor(.yellow)
                        .padding()
                    Circle().frame(height: 250)
                        .foregroundColor(Color(0xff570861))
                    CustomHeadlineText(data: "Please, you say \n\"hello\" my ztack view",
                                       fgColor: Color(0xff570861),
                                       bgColor: Color(0xffCBC3E3))
                }
            )
        }
    }
    
    var body: some View {
        dynamicStackView(stackType: .DefaultStack)
        
    }
}

struct MyStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyStackView()
    }
}
