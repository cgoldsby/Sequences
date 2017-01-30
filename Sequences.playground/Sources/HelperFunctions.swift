import Foundation
import CoreGraphics


private let π = CGFloat(M_PI)

public extension Int {
    
    var radians: CGFloat {
      return π * CGFloat(self) / 180
    }
    
}
