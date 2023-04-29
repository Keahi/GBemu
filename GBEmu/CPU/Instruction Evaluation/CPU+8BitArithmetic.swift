//
//  CPU+8BitArithmetic.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

extension CPU {
    /// 0x04 INC B
    @discardableResult
    func inc_B() throws -> CPUInstructionEvaluationResult {
        add(1, to: &registerB)
        return CPUInstructionEvaluationResult(cycleCount: 1)
    }

    /// 0x0C INC C
    @discardableResult
    func inc_C() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x14 INC D
    @discardableResult
    func inc_D() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x1C INC E
    @discardableResult
    func inc_E() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x24 INC H
    @discardableResult
    func inc_H() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x2C INC L
    @discardableResult
    func inc_L() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x3C INC A
    @discardableResult
    func inc_A() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }
}

private extension CPU {
    func add(_ number: Word, to register: inout Word) {
        let arithmeticResult = add(number, to: register)

        register = arithmeticResult.newRegisterValue
        flagZero = arithmeticResult.zeroFlagResult.flagValue(existingValue: flagZero)
        flagSubtraction = arithmeticResult.subtractionFlagResult.flagValue(existingValue: flagSubtraction)
        flagCarry = arithmeticResult.carryFlagResult.flagValue(existingValue: flagCarry)
        flagHalfCarry = arithmeticResult.halfCarryFlagResult.flagValue(existingValue: flagHalfCarry)
    }

    func add(_ number: Word, to registerValue: Word) -> WordArithmeticResult {
        let result = registerValue.safeAdd(number)

        return WordArithmeticResult(
            result.value,
            zero: result.didZero.flagResultValue,
            subtraction: .clear,
            halfCarry: result.didHalfCarry.flagResultValue,
            carry: result.didCarry.flagResultValue
        )
    }
}
