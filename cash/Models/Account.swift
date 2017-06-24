//
//  Account.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

/// An Account is a representation of an actual account that stores a value of some currency, that can be traded back
/// and forth between other accounts. Examples include a bank account, credit card, loans, or cash in your wallet.
struct Account {

    enum Kind {
        case asset
        case bank
        case cash
        case credit
        case equity
        case expense
        case income
        case liability
        case root
    }

    /// The commodity that is being tracked in this account.
    let commodity: Commodity

    /// Description of the account.
    let description: String

    /// Identintifier of the account.
    let id: UUID

    /// Whether or not this is a placeholder account. Placeholder accounts do not hold a balance, nor can you transfer
    /// funds between them. They only exist for account structure.
    let isPlaceholder: Bool

    /// What kind of account this is.
    let kind: Kind

    /// The name to be displayed for this account.
    let name: String

    /// Identifier for the parent account. If this is the root account, then the `parentID` will be the same as this
    /// account's `id`.
    let parentID: UUID
}
