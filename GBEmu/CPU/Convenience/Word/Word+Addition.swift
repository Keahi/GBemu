//
//  Word+Addition.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

extension Word {
    struct SafeAddResult {
        let result: Word

        /// Set if the result is `0`; otherwise reset
        let didZero: Bool

        /// Set if there is a carry from bit 3; otherwise reset
        let didHalfCarry: Bool

        /// Set if there is a carry from bit 7; otherwise reset
        let didCarry: Bool
    }

    func safeAdd(_ word1: Word, _ word2: Word) -> SafeAddResult {
        fatalError("Not implemented")
    }
}
