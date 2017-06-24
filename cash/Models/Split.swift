//
//  Split.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//
import Foundation

/// A Split represents the movement of some commodity into or out of an Account. Multiple Splits go in to make a
/// Transaction. For example, one split might record that $35 was taken out of Account A, and another split would record
/// that $35 was put into Account B. The combination of these two splits would make a Transaction of $35 being moved
/// from Account A to Account B.
struct Split {

    /// Identifier for the account that this split is taking money out of or putting it into.
    let accountID: UUID

    /// Identifier for this individual split.
    let id: UUID

    /// Memo added to the Split by the user.
    let memo: String

    /// Change in quantity of the account expressed in the commodity of the account.
    let quantity: Money

    /// Identifier for the Transaction that this split is a part of.
    let transactionID: UUID

    /// Amount value of this split which is in the currency of the transaction.
    let value: Money
}

