//
//  TransactionModel.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import Foundation

struct Transaction: Identifiable {
    var id = UUID()
    var amount: Float16
    var type: TransactionType
    var date: Date
    var category: String
}
