//
//  CPUInstruction8BitDecodeError.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/26/23.
//

import Foundation

enum CPUInstruction8BitDecodeError: Error {
    /// Thrown when the provided `Word` does not contain a valid instruction.
    /// If this is the case, the CPU won't know what to do.
    case invalidOpcode
    /// Thrown when the provided `Word` is a prefix for a 16-bit instruction.
    /// This is not an error in itself, but the caller should then attempt to decode a `DoubleWord` as a `LR35902Instruction16Bit`
    case requires16BitOpcode
}
