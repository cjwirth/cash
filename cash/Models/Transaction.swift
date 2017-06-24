//
//  Transaction.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

/// A Transaction represents the movement of money between accounts. It is made up of a number of Splits, that represent
/// money being credited to or debited from an account. To be a valid Transaction, the sum of the value of all the
/// Splits must be 0.
struct Transaction {

    enum Kind {
        case credit, debit

        var opposite: Kind {
            switch self {
            case .credit: return .debit
            case .debit: return .credit
            }
        }
    }

    /// Commodity being traded in this transaction.
    let commodity: Commodity

    /// Description of the transaction.
    let description: String

    /// Date that the transaction was added into the system.
    let enteredDate: Date

    /// Identifier for the transaction.
    let id: UUID

    /// Extra notes for the transaction added by the user.
    let notes: String

    /// Date that the transaction took place.
    let postedDate: Date

    /// Individual splits that make up the transaction.
    let splits: [Split]
}
