//
//  Transaction.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

struct Transaction {
    enum `Type` {
        case credit, debit

        var opposite: Type {
            switch self {
            case .credit: return .debit
            case .debit: return .credit
            }
        }
    }

    let commodity: Commodity
    let description: String
    let enteredDate: Date
    let id: UUID
    let notes: String
    let postedDate: Date
    let splits: [Split]
}
