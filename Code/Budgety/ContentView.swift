//
//  ContentView.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//
// Note:
// 1. The comments are marked with a number, you can find the details about it in Code/Refractored/Comments
// 2. Original Copies of Refractored Code are stored at Code/Refractored/FromContentView

import SwiftUI



struct ContentView: View {
    @State var transactions : [Transaction] = [
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
    var body: some View {
        VStack {
            HStack{
                Text("Payment History").font(.system(size: 18, weight: .semibold))
                Spacer()
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "line.3.horizontal").font(.system(size: 18, weight: .semibold)).foregroundStyle(Color.black)
                })
                
            }.padding(.horizontal)
            
            List{
            ForEach(transactions){ transaction in
                TransactionRow(transaction: transaction)
// Comment - #1
                
                }
            }.scrollContentBackground(.hidden)
        }
    }
}

struct TransactionRow: View {
    let transaction: Transaction
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife.circle")
                Text(transaction.item)
                Spacer()
                Text(transaction.type == .income ? "+\(transaction.displayAmount)" : "- \(transaction.displayAmount)")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(transaction.type == .expense ? Color.black : Color.green)
            }
            HStack {
                Text(transaction.type == .income ? "Recieved on \(transaction.date.shortStyle)" : "Paid On \(transaction.date.shortStyle)")
                    .font(.system(size: 14, weight: .light))
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
