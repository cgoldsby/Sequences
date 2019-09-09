//
//  RainboView.swift
//  Sequences
//
// Copyright (c) 2019 Chris Goldsby
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

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
