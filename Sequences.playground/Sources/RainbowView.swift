import Foundation
import UIKit


private let width   = 24
private let height  = 32

final public class RainbowView: UIView {
    
    public init(sequences: [AnySequence<UIColor>], length: Int? = nil) {
        let numberOfColors: Int
        
        if let length = length {
            numberOfColors = length
        }
        else {
            numberOfColors = 21
        }
        
        super.init(frame: CGRect(x: 0, y: 0, width: width * numberOfColors, height: height * sequences.count))
        addColorSubviews(sequences: sequences, length: length)
 
    }
    
    public convenience init(sequence: AnySequence<UIColor>, length: Int? = nil) {
        self.init(sequences: [sequence], length: length)
    }
    
    private func addColorSubviews(sequences: [AnySequence<UIColor>], length: Int?) {
        var y = 0
        
        for sequence in sequences {
        
            var x = 0
            var count = 0
            
            for color in sequence {
                let view = UIView(frame: CGRect(x: x, y: y, width: width, height: height))
                view.backgroundColor = color
                addSubview(view)
                x += width
                
                if let length = length, count > length {
                    break
                }
                
                count += 1
            }
            
            y += height
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
