//: [Previous](@previous)

import Foundation
import Sequences
import UIKit
import XCPlayground


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))

containerView.backgroundColor = UIColor(red: 0.16, green: 0.17, blue: 0.22, alpha:1.00)

XCPlaygroundPage.currentPage.liveView = containerView

let strings = [
    "Hello love at first swipe.",
    "Hello other side of the road.",
    "Hello yogi on my wrist.",
    "Hello driver, fast as you can.",
    "Hello workout in my living room.",
    "Hello every pitch, every highlight.",
    "Hello self-combusting selfies.",
    "Hello double tap heart.",
    "Hello rain in five minutes.",
    "Hello 6 seconds of fame.",
    "Hello big idea.",
]

let rainbow = UIColor.rainbowIterator()

var y = 24

for string in strings {
    
    let label = UILabel(frame: CGRect(x: 24, y: y, width: 0, height: 0))
    
    label.textColor = rainbow.next() // 🌈!!!
    
    label.text = string
    label.sizeToFit()
    
    containerView.addSubview(label)
    y += 30
}

//: [Next](@next)
