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
    var item: String
}

extension Date {
    var shortStyle: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMMM, h:mm a"
        return formatter.string(from: self)
    }
}
