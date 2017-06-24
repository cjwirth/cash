//
//  Book.swift
//  cash
//
//  Created by Caesar Wirth on 6/24/17.
//  Copyright © 2017 cjwirth. All rights reserved.
//

import Foundation

/// A Book is the top level structure that keeps all accounts and transactions.
struct Book {

    /// Identifier for this book.
    let id: UUID

    /// Name used to display this book.
    let name: String

    /// Identifier for the root account of this book
    let rootAccountID: UUID
}
