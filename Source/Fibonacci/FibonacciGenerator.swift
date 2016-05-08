//
//  FibonacciGenerator.swift
//  Sequences
//
//  Created by Christopher Goldsby on 5/8/16.
//
//

import Foundation

func fibonacciGenerator() -> AnyGenerator<Int> {
    var current = 0
    var next = 1

    return AnyGenerator {
        let value = current
        current = next
        next = next + value
        return value
    }
}
