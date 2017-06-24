//
//  Money.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

/// Money is a representation of an amout of a certain currency. For example, this might be "3.24 US Dollars,"
/// "175 Japanese Yen," or even "3 Trading Cards" if that is your commodity. It is used in Splits in Transactions to
/// keep track of the amount of 'money' being debited form and credited to accounts.
struct Money {

    /// Amount of the commodity being represented.
    let amount: Double

    /// Commodity that is being represented.
    let commodity: Commodity
    
}
