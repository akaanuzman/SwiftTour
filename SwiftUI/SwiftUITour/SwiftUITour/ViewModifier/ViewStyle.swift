import Foundation
import SwiftUI

extension View {
    func titleStyle() -> some View {
        self.modifier(CustomLargeTitle(shadowRadius: .medium))
    }
}
