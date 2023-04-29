//
//  CPU+8BitArithmeticTests.swift
//  GBEmuTests
//
//  Created by Jacob Ertell on 4/26/23.
//

@testable import GBEmu
import XCTest

final class CPU_8BitArithmeticTests: XCTestCase {
    // MARK: 0x04 INC B
    func testInstruction_inc_B() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is B == 0x01
        cpu.setRegisters(b: 0x00)
        try cpu.evaluate(.inc_B)
        XCTAssertEqual(cpu.registerB, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is B == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(b: 0xFF)
        try cpu.evaluate(.inc_B)
        XCTAssertEqual(cpu.registerB, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is B == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(b: 0x3C)
        try cpu.evaluate(.inc_B)
        XCTAssertEqual(cpu.registerB, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is B == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(b: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_B)
        XCTAssertEqual(cpu.registerB, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: - 0x05 DEC B
    func testInstruction_dec_B() throws {

    }

    // MARK: 0x0C INC C
    func testInstruction_inc_C() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is C == 0x01
        cpu.setRegisters(c: 0x00)
        try cpu.evaluate(.inc_C)
        XCTAssertEqual(cpu.registerC, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is C == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(c: 0xFF)
        try cpu.evaluate(.inc_C)
        XCTAssertEqual(cpu.registerC, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is C == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(c: 0x3C)
        try cpu.evaluate(.inc_C)
        XCTAssertEqual(cpu.registerC, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is C == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(c: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_C)
        XCTAssertEqual(cpu.registerC, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: 0x14 INC D
    func testInstruction_inc_D() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is D == 0x01
        cpu.setRegisters(d: 0x00)
        try cpu.evaluate(.inc_D)
        XCTAssertEqual(cpu.registerD, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is D == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(d: 0xFF)
        try cpu.evaluate(.inc_D)
        XCTAssertEqual(cpu.registerD, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is D == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(d: 0x3C)
        try cpu.evaluate(.inc_D)
        XCTAssertEqual(cpu.registerD, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is D == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(d: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_D)
        XCTAssertEqual(cpu.registerD, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: 0x1C INC E
    func testInstruction_inc_E() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is E == 0x01
        cpu.setRegisters(e: 0x00)
        try cpu.evaluate(.inc_E)
        XCTAssertEqual(cpu.registerE, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is E == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(e: 0xFF)
        try cpu.evaluate(.inc_E)
        XCTAssertEqual(cpu.registerE, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is E == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(e: 0x3C)
        try cpu.evaluate(.inc_E)
        XCTAssertEqual(cpu.registerE, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is E == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(e: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_E)
        XCTAssertEqual(cpu.registerE, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: 0x24 INC H
    func testInstruction_inc_H() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is H == 0x01
        cpu.setRegisters(h: 0x00)
        try cpu.evaluate(.inc_H)
        XCTAssertEqual(cpu.registerH, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is H == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(h: 0xFF)
        try cpu.evaluate(.inc_H)
        XCTAssertEqual(cpu.registerH, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is H == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(h: 0x3C)
        try cpu.evaluate(.inc_H)
        XCTAssertEqual(cpu.registerH, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is H == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(h: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_H)
        XCTAssertEqual(cpu.registerH, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: 0x2C INC L
    func testInstruction_inc_L() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is L == 0x01
        cpu.setRegisters(l: 0x00)
        try cpu.evaluate(.inc_L)
        XCTAssertEqual(cpu.registerL, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is L == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(l: 0xFF)
        try cpu.evaluate(.inc_L)
        XCTAssertEqual(cpu.registerL, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is L == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(l: 0x3C)
        try cpu.evaluate(.inc_L)
        XCTAssertEqual(cpu.registerL, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is L == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(l: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_L)
        XCTAssertEqual(cpu.registerL, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: 0x3C INC A
    func testInstruction_inc_A() throws {
        var cpu = CPU()

        // Test from 0x00
        // Expected outcome is A == 0x01
        cpu.setRegisters(a: 0x00)
        try cpu.evaluate(.inc_A)
        XCTAssertEqual(cpu.registerA, 0x01)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0xFF
        // Expected outcome is A == 0x00. The carry and half carry flags will be set.
        cpu = CPU()
        cpu.setRegisters(a: 0xFF)
        try cpu.evaluate(.inc_A)
        XCTAssertEqual(cpu.registerA, 0x00)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertTrue(cpu.flagCarry)

        // Test from 0x3C
        // Expected outcome is A == 0x3D. The half carry flag will be set.
        cpu = CPU()
        cpu.setRegisters(a: 0x3C)
        try cpu.evaluate(.inc_A)
        XCTAssertEqual(cpu.registerA, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertTrue(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)

        // Test from 0x00 with subtraction flag set
        // Expected outcome is A == 0x01. The subtraction flag will be set to false.
        cpu = CPU()
        cpu.setRegisters(a: 0x3C)
        cpu.flagSubtraction = true
        try cpu.evaluate(.inc_A)
        XCTAssertEqual(cpu.registerA, 0x3D)
        XCTAssertFalse(cpu.flagZero)
        XCTAssertFalse(cpu.flagSubtraction)
        XCTAssertFalse(cpu.flagHalfCarry)
        XCTAssertFalse(cpu.flagCarry)
    }

    // MARK: - 0x2F CPL
    func testInstruction_cpl() throws {
        let cpu = CPU()
        cpu.setRegisters(a: 0b10101010)
        try cpu.evaluate(.cpl)
        XCTAssertEqual(cpu.registerA, 0b01010101)
    }
}
