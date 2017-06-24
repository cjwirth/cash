//
//  Account.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

struct Account {

    enum `Type` {
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

    let accountType: Type
    let commodity: Commodity
    let description: String
    let id: UUID
    let isPlaceholder: Bool
    let name: String
    let parentID: UUID
    let transactions: [Transaction]
}
