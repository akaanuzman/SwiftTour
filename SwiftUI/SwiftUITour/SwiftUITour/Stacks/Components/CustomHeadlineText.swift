import Foundation
import SwiftUI

struct CustomHeadlineText : View {
    let data: String
    var fgColor: Color? = nil
    var bgColor: Color? = nil
    
    var body: some View {
        Text(data)
            .padding()
            .font(.headline)
            .fontWeight(.heavy)
            .foregroundColor(fgColor)
            .background(bgColor)
    }
}

struct CustomHeadlineText_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeadlineText(data: "data")
            .previewLayout(.sizeThatFits)
    }
}
