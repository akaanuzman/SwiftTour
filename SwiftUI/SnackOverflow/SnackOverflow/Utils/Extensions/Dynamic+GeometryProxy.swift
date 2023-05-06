import SwiftUI

extension GeometryProxy {
    /// Dyanmic  height by device
    /// - Parameter height: Percent value
    /// - Returns: Calculated value for device height
    func dh(height: Double) -> Double {
        return size.height * height
    }
    
    /// Dyanmic width by device
    /// - Parameter width: Percent value
    /// - Returns: Calculated value for device width
    func dw(width: Double) -> Double {
        return size.width * width
    }
}
