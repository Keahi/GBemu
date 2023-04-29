//
//  CPUInstruction16BitDecodeFailure.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/26/23.
//

import Foundation

enum CPUInstruction16BitDecodeFailure: Error {
    /// Thrown when the provided `DoubleWord` does not contain a valid instruction.
    /// If this is the case, the CPU won't know what to do.
    case invalidOpcode
}
