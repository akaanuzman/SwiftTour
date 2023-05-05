import SwiftUI

struct TimerView: View {
    @State private var timeText: String = ""
    @State private var bgColor : Color = .red
    @State private var colorValue : Int = 0
    
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    private var colorIsOdd : Bool {
        return colorValue % 2 == 0
    }
    
    var body: some View {
        VStack {
            SubscriptionView(content: Text(timeText), publisher: timer) { time in
                timeText = time.description
                colorValue += 1
            }
        }.padding().background(colorIsOdd ? .red : .blue)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
