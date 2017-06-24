//
//  Commodity.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

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

