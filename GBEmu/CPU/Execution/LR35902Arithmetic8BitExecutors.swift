//
//  LR35902Arithmetic8BitExecutors.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

extension LR35902CPU {
    /// 0x04 INC B
    @discardableResult
    func inc_B() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }

    /// 0x0C INC C
    @discardableResult
    func inc_C() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }

    /// 0x14 INC D
    @discardableResult
    func inc_D() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }

    /// 0x1C INC E
    @discardableResult
    func inc_E() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }

    /// 0x24 INC H
    @discardableResult
    func inc_H() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }

    /// 0x2C INC L
    @discardableResult
    func inc_L() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }

    /// 0x3C INC A
    @discardableResult
    func inc_A() throws -> LR35902ExecutionResult {
        throw LR35902ExecutionError.instructionNotImplemented
    }
}

private extension LR35902CPU {
    func add(_ number: Word, to registerValue: Word) -> RegisterArithmeticResult {
        fatalError("Not implemented")
    }
}
