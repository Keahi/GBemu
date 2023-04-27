//
//  LR35902CPUTests.swift
//  GBEmuTests
//
//  Created by Jacob Ertell on 4/26/23.
//

@testable import GBEmu
import XCTest

final class LR35902CPUTests: XCTestCase {
    func testInstruction_cpl() {
        let cpu = LR35902CPU()
        cpu.setRegisters(a: 0b10101010)
        cpu.evaluate(.cpl)
        XCTAssertEqual(cpu.registerA, 0b01010101)
    }
}
