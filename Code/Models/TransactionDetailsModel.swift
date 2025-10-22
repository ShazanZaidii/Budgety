//
//  TransactionDetailsModel.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import Foundation
//import SwiftUI


var transactions : [Transaction] = [
    Transaction(amount: 62, type: .expense, date: Date(), category: "Food", item: "Sharif Sweets"),
    Transaction(amount: 10, type: .expense, date: Date(), category: "Food", item: "Irctc UTS"),
    Transaction(amount: 20, type: .income, date: Date(), category: "Food", item: "Naseeb Khan"),
    Transaction(amount: 50, type: .income, date: Date(), category: "Food", item: "Ajay Aggarwal"),
    Transaction(amount: 284, type: .expense, date: Date(), category: "Food", item: "Swiggy Ltd"),
    Transaction(amount: 16, type: .expense, date: Date(), category: "Food", item: "Anand Enterprise"),
    Transaction(amount: 9.82, type: .expense, date: Date(), category: "Food", item: "Amir Kheyali"),
    Transaction(amount: 252, type: .expense, date: Date(), category: "Food", item: "Ekart"),
    Transaction(amount: 10000, type: .income, date: Date(), category: "Food", item: "Papa"),
    Transaction(amount: 150, type: .expense, date: Date(), category: "Food", item: "Rishidev"),
    Transaction(amount: 269, type: .expense, date: Date(), category: "Food", item: "Swiggy"),
    Transaction(amount: 742, type: .income, date: Date(), category: "Food", item: "Ranjit Kamat"),
    Transaction(amount: 233, type: .expense, date: Date(), category: "Food", item: "Zepto Marketplace")
]


//var Balance: Double = 0
//var Income: Double = 0
//var Expense: Double = 0


func getIncome() -> Double {
    var income: Double = 0
    for transaction in transactions {
        if transaction.type == .income {
            income += transaction.amount
        }
    }
    return income
}
func getExpense() -> Double {
    var expense: Double = 0
    for transaction in transactions {
        if transaction.type == .expense {
            expense += transaction.amount
        }
    }
    return expense
}

var getBalance: Double = getIncome() - getExpense()
