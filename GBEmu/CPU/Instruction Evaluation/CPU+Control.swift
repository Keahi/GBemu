//
//  CPU+Control.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/27/23.
//

import Foundation

/// https://meganesu.github.io/generate-gb-opcodes/
/// This file can be searched by using "Find" with the text `0xFF`, where `0xFF` is the hexadecimal value of the opcode in question.
extension CPU {
    /// 0x00
    @discardableResult
    func nop() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x10
    @discardableResult
    func stop() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x27
    @discardableResult
    func daa() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x2F
    @discardableResult
    func cpl() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x37
    @discardableResult
    func scf() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x3F
    @discardableResult
    func ccf() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0x76
    @discardableResult
    func halt() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0xF3
    @discardableResult
    func di() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }

    /// 0xFB
    @discardableResult
    func ei() throws -> CPUInstructionEvaluationResult {
        throw CPUError.instructionNotImplemented
    }
}
