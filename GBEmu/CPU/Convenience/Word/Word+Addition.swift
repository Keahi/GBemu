//
//  Word+Addition.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

extension Word {
    struct SafeAddResult {
        let value: Word

        /// Set if the result is `0`; otherwise reset
        let didZero: Bool
        /// Set if there is a carry from bit 3; otherwise reset
        let didHalfCarry: Bool
        /// Set if there is a carry from bit 7; otherwise reset
        let didCarry: Bool
    }

    /// Adds `otherWord` to `self`, allowing for overflow.
    /// This provides additional context around the result in the form of resultant flag values.
    func safeAdd(_ otherWord: Word) -> SafeAddResult {
        return Self.safeAdd(self, otherWord)
    }

    /// Adds `word2` to `word1`
    static func safeAdd(_ word1: Word, _ word2: Word) -> SafeAddResult {
        let wasBit3Set = word1.bitValue(at: 3)
        let wasBit7Set = word2.bitValue(at: 7)

        let result = word1 &+ word2

        let isBit3Set = result.bitValue(at: 3)
        let isBit7Set = result.bitValue(at: 7)

        return SafeAddResult(
            value: result,
            didZero: result == 0,
            didHalfCarry: !wasBit3Set && isBit3Set,
            didCarry: !wasBit7Set && isBit7Set
        )
    }
}
