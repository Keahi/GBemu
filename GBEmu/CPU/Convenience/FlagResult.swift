//
//  FlagResult.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

enum FlagResult {
    /// Used when the original value of the flag should be used
    case unaffected
    /// Used when the flag must be set to `true`
    case set
    /// Used when the flag must be set to `false`
    case clear

    func flagValue(existingValue: Bool) -> Bool {
        switch self {
            case .unaffected:
                return existingValue
            case .set:
                return true
            case .clear:
                return false
        }
    }
}
