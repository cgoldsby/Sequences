//
//  FibonacciIterator.swift
//  Sequences
//
//  Created by Christopher Goldsby on 5/8/16.
//
//

import Foundation


func fibonacciIterator() -> AnyIterator<Int> {
    var current = 0
    var next = 1
    
    return AnyIterator {
        let value = current
        current = next
        next = next + value
        return value
    }
}
