//
//  Commodity.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

/// A Commodity is any item that has value and can be traded. Most commonly this will be a currency such as US Dollars
/// or Japanese Yen, but it can be anything, such as stocks and bonds, or even items like Trading Cards if they can be
/// traded and hold a value.
///
/// Currently only US Dollars is supported.
enum Commodity {
    case usd

    var fullName: String {
        return Representation.get(self).fullName
    }

    var namespace: String {
        return "ISO4217"
    }

    var mnemonic: String {
        return Representation.get(self).mnemonic
    }

    var fraction: Int {
        return Representation.get(self).fraction
    }
}

private struct Representation {
    let fullName: String
    let mnemonic: String
    let fraction: Int

    static let usd = Representation(fullName: "United States Dollar", mnemonic: "USD", fraction: 100)

    static func get(_ commodity: Commodity) -> Representation {
        switch commodity {
        case .usd: return usd
        }
    }
}

