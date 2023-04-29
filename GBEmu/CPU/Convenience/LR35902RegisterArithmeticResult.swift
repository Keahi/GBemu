//
//  LR35902RegisterArithmeticResult.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

struct RegisterArithmeticResult {
    let newRegisterValue: Word

    /// Denoted `Z` in the GameBoy programming manual
    let zeroFlagResult: FlagResult
    /// Denoted `N` in the GameBoy programming manual
    let subtractionFlagResult: FlagResult
    /// Denoted `H` in the GameBoy programming manual
    let halfCarryFlagResult: FlagResult
    /// Denoted `CY` in the GameBoy programming manual
    let carryFlagResult: FlagResult

    init(
        _ newRegisterValue: Word,
        zero: FlagResult = .unaffected,
        subtraction: FlagResult = .unaffected,
        halfCarry: FlagResult = .unaffected,
        carry: FlagResult = .unaffected
    ) {
        self.newRegisterValue = newRegisterValue
        self.zeroFlagResult = zero
        self.subtractionFlagResult = subtraction
        self.halfCarryFlagResult = halfCarry
        self.carryFlagResult = carry
    }
}
