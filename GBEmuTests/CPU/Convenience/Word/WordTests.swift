//
//  WordTests.swift
//  GBEmuTests
//
//  Created by Jacob Ertell on 4/29/23.
//

@testable import GBEmu
import XCTest

final class WordTests: XCTestCase {
    func testBitValuesFalse() {
        let word: Word = 0x00

        XCTAssertFalse(word.bitValue(at: 0))
        XCTAssertFalse(word.bitValue(at: 1))
        XCTAssertFalse(word.bitValue(at: 2))
        XCTAssertFalse(word.bitValue(at: 3))
        XCTAssertFalse(word.bitValue(at: 4))
        XCTAssertFalse(word.bitValue(at: 5))
        XCTAssertFalse(word.bitValue(at: 6))
        XCTAssertFalse(word.bitValue(at: 7))
    }

    func testBitValuesTrue() {
        let word: Word = 0xFF

        XCTAssertTrue(word.bitValue(at: 0))
        XCTAssertTrue(word.bitValue(at: 1))
        XCTAssertTrue(word.bitValue(at: 2))
        XCTAssertTrue(word.bitValue(at: 3))
        XCTAssertTrue(word.bitValue(at: 4))
        XCTAssertTrue(word.bitValue(at: 5))
        XCTAssertTrue(word.bitValue(at: 6))
        XCTAssertTrue(word.bitValue(at: 7))
    }
}
