//
//  FibonacciGeneratorTests.swift
//  Sequences
//
//  Created by Christopher Goldsby on 5/8/16.
//
//

import XCTest
@testable import Sequences

final class FibonacciGeneratorTests: XCTestCase {
    
    func test_the_first_twenty_one_values_of_the_fibonacci_sequence() {
        let expectedValues = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765]
        
        // Given
        let generator = fibonacciGenerator()
        
        for i in 0...20 {
            // When
            let value = generator.next()
            
            // Then
            XCTAssertEqual(value, expectedValues[i])
        }
    }
}
