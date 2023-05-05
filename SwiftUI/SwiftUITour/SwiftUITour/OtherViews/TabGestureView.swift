import SwiftUI

struct TabGestureView: View {
    @State private var isTap : Bool = false
    
    private var onTap : some Gesture {
        TapGesture(count: 2).onEnded { _ in
            self.isTap = self.isTap
        }
    }
    
    var body: some View {
        CustomLabelView(label: "Plane", icon: .paperPlaneFill, color: isTap ? .blue : .red).onTapGesture {
            self.isTap = self.isTap
        }
    }
}

struct TabGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureView()
    }
}
