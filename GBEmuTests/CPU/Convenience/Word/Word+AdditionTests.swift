//
//  Word+AdditionTests.swift
//  GBEmuTests
//
//  Created by Jacob Ertell on 4/29/23.
//

@testable import GBEmu
import XCTest

final class Word_AdditionTests: XCTestCase {
    func testAddingWord() {
        let word1: Word = 0b0000_0101
        let word2: Word = 0b0000_0010
        let result = word1.safeAdd(word2)

        XCTAssertEqual(result.value, 0b0000_0111)
        XCTAssertFalse(result.didZero)
        XCTAssertFalse(result.didHalfCarry)
        XCTAssertFalse(result.didCarry)
    }

    func testAddingWordWithHalfCarry() {
        let word1: Word = 0b0000_0101
        let word2: Word = 0b0000_0110
        let result = word1.safeAdd(word2)

        XCTAssertEqual(result.value, 0b0000_1011)
        XCTAssertFalse(result.didZero)
        XCTAssertTrue(result.didHalfCarry)
        XCTAssertFalse(result.didCarry)
    }

    func testAddingWordWithCarry() {
        let word1: Word = 0b0100_0101
        let word2: Word = 0b0100_0010
        let result = word1.safeAdd(word2)

        XCTAssertEqual(result.value, 0b1000_0111)
        XCTAssertFalse(result.didZero)
        XCTAssertFalse(result.didHalfCarry)
        XCTAssertTrue(result.didCarry)
    }

    func testAddingWordWithOverflow() {
        let word1: Word = 0b1000_0000
        let word2: Word = 0b1000_0000
        let result = word1.safeAdd(word2)

        XCTAssertEqual(result.value, 0b0000_0000)
        XCTAssertTrue(result.didZero)
        XCTAssertFalse(result.didHalfCarry)
        XCTAssertFalse(result.didCarry)
    }
}
