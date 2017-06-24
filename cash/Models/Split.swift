//
//  Split.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//
import Foundation

struct Split {
    enum ReconcileState {
        case reconciled
        case notReconciled
        case cleared
    }

    let accountID: UUID
    let id: UUID
    let memo: String
    /// Change in quantity of the account expressed in the commodity of the account.
    let quantity: Money
    let reconcileDate: Date
    let reconcileState: ReconcileState
    let transactionID: UUID
    /// Amount value of this split which is in the currency of the transaction.
    let value: Money
}

