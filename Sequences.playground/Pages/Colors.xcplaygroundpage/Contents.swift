import UIKit
import Sequences


let rainbow = UIColor.rainbowSequence()
RainbowView(sequence: rainbow)

let grays = UIColor.rainbowSequence(phase1: 0, phase2: 0, phase3: 0)
RainbowView(sequence: grays)

let pastels = UIColor.rainbowSequence(amplitude: 25, center: 230)
RainbowView(sequence: pastels)

let darkerPastels = UIColor.rainbowSequence(amplitude: 55, center: 200)
RainbowView(sequence: darkerPastels)

let phaseShifts: [AnySequence<UIColor>] = stride(from: 120, through: 0, by: -10).map {
    let phase = $0.radians
    return UIColor.rainbowSequence(phase1: 0, phase2: phase, phase3: phase * 2, repeat: true)
}
RainbowView(sequences: phaseShifts, length: 50)

//: [Next](@next)
