//
//  ColorSequence.swift
//  Sequences
//
//  License
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

import Foundation

extension UIColor {
    
    public static func rainbowSequence(frequency  frequency:   CGFloat = Default.frequency,
                                                  phase1:      CGFloat = Default.phase1,
                                                  phase2:      CGFloat = Default.phase2,
                                                  phase3:      CGFloat = Default.phase3,
                                                  amplitude:   CGFloat = Default.amplitude,
                                                  center:      CGFloat = Default.center,
                                                  `repeat`:    Bool    = false) -> AnySequence<UIColor> {
        
        return AnySequence(rainbowGenerator(frequency:  frequency,
                                            phase1:     phase1,
                                            phase2:     phase2,
                                            phase3:     phase3,
                                            amplitude:  amplitude,
                                            center:     center,
                                            repeat:     `repeat`))
    }
}