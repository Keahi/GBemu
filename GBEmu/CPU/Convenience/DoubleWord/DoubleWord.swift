//
//  DoubleWord.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

typealias DoubleWord = UInt16

extension DoubleWord {
    /// Determines whether the bit is `0` or `1` at the specified `index` and returns that value as a `Bool`
    func bitValue(at index: Int) -> Bool {
        precondition((0...15).contains(index), "Expected a bit index 0...15 for a Word type, but got \(index)")

        let bitmask: UInt16 = 1 << index
        let isBitSet = (self & bitmask) > 0

        return isBitSet
    }

    var binaryStringValue: String {
        var result = ""

        (15...0).forEach { bitIndex in
            result += bitValue(at: bitIndex) ? "1" : "0"
        }

        return result
    }
}
