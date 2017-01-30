//
//  ColorSequence.swift
//  Sequences
//
//  License
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

import Foundation

extension UIColor {
    
    /**
     Sequence that generates the `next` color using a Sine wave.
     - returns: `AnySequence<UIColor>`
     - parameter frequency: how fast the sine wave oscillates
     - parameter phase1: color phase in radians for red
     - parameter phase2: color phase in radians for green
     - parameter phase3: color phase in radians for blue
     - parameter amplitude: how high and low the sine wave reaches.
     - parameter center: the center position of the sine wave.
     - parameter repeat: if `true` the sequence will continue infinitely; defaults to false
     */
    public static func rainbowSequence(frequency:   CGFloat = Default.frequency,
                                       phase1:      CGFloat = Default.phase1,
                                       phase2:      CGFloat = Default.phase2,
                                       phase3:      CGFloat = Default.phase3,
                                       amplitude:   CGFloat = Default.amplitude,
                                       center:      CGFloat = Default.center,
                                       repeat:      Bool    = false) -> AnySequence<UIColor> {
        
        return AnySequence(rainbowIterator(frequency:  frequency,
                                           phase1:     phase1,
                                           phase2:     phase2,
                                           phase3:     phase3,
                                           amplitude:  amplitude,
                                           center:     center,
                                           repeat:     `repeat`))
    }
}
