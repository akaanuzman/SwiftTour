import SwiftUI

enum LabelIconsEnum : String {
    case suitHeartFill = "suit.heart.fill"
    case paperPlaneFill = "paperplane.fill"
    case airPodsPro = "airpodspro"
}

struct LabelView: View {
    var body: some View {
        VStack {
            CustomLabelView(label: "Heart", icon: .suitHeartFill, color: .pink)
            CustomLabelView(label: "Plane", icon: .paperPlaneFill, color: .green)
            CustomLabelView(label: "Airpods", icon: .airPodsPro, color: .gray)
        }
    }
}



struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}

struct CustomLabelView: View {
    let label : String
    let icon : LabelIconsEnum
    let color : Color
    var body: some View {
        Label(label, systemImage: icon.rawValue).foregroundColor(color)
            .frame(width: 100)
            .padding()
            .background(color.opacity(0.2))
            .cornerRadius(8)
    }
}
