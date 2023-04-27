//
//  LR35902CPU.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/26/23.
//

import Foundation

typealias Word = UInt8
typealias DoubleWord = UInt16

class LR35902CPU {
    // MARK: - Registers

    /// The accumulator which stores data and arithmetic/logical operations results
    private(set) var registerA: Word = 0

    // Note these can be addressed as register pair 'BC'
    private(set) var registerB: Word = 0
    private(set) var registerC: Word = 0

    // Note these can be addressed as register pair 'DE'
    private(set) var registerD: Word = 0
    private(set) var registerE: Word = 0

    /// This is a special register which uses bits to track the various flags supported by this CPU.
    /// The bits are arranged as such: `ZSHC0000`.
    ///   - Z: Zero flag
    ///   - S: Subtraction flag
    ///   - H: Half Carry flag
    ///   - C: Carry flag
    /// All other bits are zero.
    private(set) var registerF: Word = 0

    // Note these can be addressed as register pair 'HL'
    private(set) var registerH: Word = 0
    private(set) var registerL: Word = 0

    /// Holds the address data of the program to be executed next
    private(set) var programCounter: DoubleWord = 0

    /// Holds the starting address of the stack area of memory
    private(set) var stackPointer: DoubleWord = 0

    // MARK: - Flags

    private static let flagBitmaskZero: Word = 0b1000_0000
    private static let flagBitmaskSubtraction: Word = 0b0100_0000
    private static let flagBitmaskHalfCarry: Word = 0b0010_0000
    private static let flagBitmaskCarry: Word = 0b0001_0000

    private var flagZero: Bool {
        get {
            (registerF & Self.flagBitmaskZero) != 0
        }
        set {
            if newValue {
                registerF = (registerF | Self.flagBitmaskZero)
            } else {
                registerF = (registerF ^ Self.flagBitmaskZero)
            }
        }
    }

    private var flagSubtraction: Bool {
        get {
            (registerF & Self.flagBitmaskSubtraction) != 0
        }
        set {
            if newValue {
                registerF = (registerF | Self.flagBitmaskSubtraction)
            } else {
                registerF = (registerF ^ Self.flagBitmaskSubtraction)
            }
        }
    }

    private var flagHalfCarry: Bool {
        get {
            (registerF & Self.flagBitmaskHalfCarry) != 0
        }
        set {
            if newValue {
                registerF = (registerF | Self.flagBitmaskHalfCarry)
            } else {
                registerF = (registerF ^ Self.flagBitmaskHalfCarry)
            }
        }
    }

    private var flagCarry: Bool {
        get {
            (registerF & Self.flagBitmaskCarry) != 0
        }
        set {
            if newValue {
                registerF = (registerF | Self.flagBitmaskCarry)
            } else {
                registerF = (registerF ^ Self.flagBitmaskCarry)
            }
        }
    }

    // MARK: - Execution

    func evaluate(_ instruction: LR35902Instruction) {
        switch instruction {
            case .cpl:
                registerA = ~registerA
            default:
                break
        }
    }

    // MARK: - State Modification

    func setRegisters(
        a: Word? = nil,
        b: Word? = nil,
        c: Word? = nil,
        d: Word? = nil,
        e: Word? = nil,
        h: Word? = nil,
        l: Word? = nil
    ) {
        if let a { registerA = a }
        if let b { registerB = b }
        if let c { registerC = c }
        if let d { registerD = d }
        if let e { registerE = e }
        if let h { registerH = h }
        if let l { registerL = l }
    }

    func moveStackPointer(to newStackPointer: DoubleWord) {
        stackPointer = newStackPointer
    }

    func setProgramCounter(to newProgramCounter: DoubleWord) {
        programCounter = newProgramCounter
    }
}
