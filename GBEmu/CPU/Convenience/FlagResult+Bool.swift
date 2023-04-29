//
//  FlagResult+Bool.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/29/23.
//

import Foundation

extension Bool {
    var flagResultValue: FlagResult {
        return self ? .set : .clear
    }
}

extension Optional where Wrapped == Bool {
    var flagResultValue: FlagResult {
        guard let self else { return .unaffected }
        return self.flagResultValue
    }
}
