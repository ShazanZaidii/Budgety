//
//  TransactionModel.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import Foundation

struct Transaction: Identifiable {
    var id = UUID()
    var amount: Double
    var type: TransactionType
    var date: Date
    var category: String
    var item: String
//    var displayDate: String {
//        let dateFormatter = DateFormatter()
////        dateFormatter.dateStyle = .short
//        dateFormatter.dateFormat = "d MMM, h:mm a"
//        return dateFormatter.string(from: self.date)
//    }
    
    var displayAmount: String {
        let numericFormatter = NumberFormatter()
        numericFormatter.numberStyle = .currency
        return numericFormatter.string(from: NSNumber(value: amount)) ?? "$0.00"
    }
}

    
extension Date {
    var shortStyle: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM, h:mm a"
        return formatter.string(from: self)
    }
}

