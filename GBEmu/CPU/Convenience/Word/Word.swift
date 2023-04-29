//
//  Word.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

typealias Word = UInt8

extension Word {
    /// Determines whether the bit is `0` or `1` at the specified `index` and returns that value as a `Bool`
    func bitValue(at index: Int) -> Bool {
        precondition((0...7).contains(index), "Expected a bit index 0...7 for a Word type, but got \(index)")

        let bitmask: UInt8 = 1 << index
        let isBitSet = (self & bitmask) > 0

        return isBitSet
    }

    var binaryStringValue: String {
        var result = ""

        (7...0).forEach { bitIndex in
            result += bitValue(at: bitIndex) ? "1" : "0"
        }

        return result
    }
}
