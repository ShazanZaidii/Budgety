//
//  ContentView.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import SwiftUI



struct ContentView: View {
    @State var transactions : [Transaction] = [
        Transaction(amount: 9.82, type: .income, date: Date(), category: "Food", item: "Apple")
    ]
    var body: some View {
        VStack {
            List{
            ForEach(transactions){ transaction in
                VStack{
                    HStack{
                                        Image(systemName: "fork.knife.circle")
                                        Text(transaction.item)
                                        Spacer()
                        Text(transaction.type == .income ? "+$\(transaction.amount.description)" :"- $\(transaction.amount.description)").font(.system(size: 18, weight: .bold)).foregroundStyle(transaction.type == .expense ? Color.black : Color.green)
//                                        Image(systemName: transaction.type == .expense ? "arrow.up.right" : "arrow.down.left").font(.system(size: 18, weight: .bold)).foregroundStyle(transaction.type == .expense ? Color.red : Color.green)
                                    }
                    HStack{
                        Text("Paid On \(transaction.date.shortStyle)").font(.system(size: 14, weight: .light))


                        Spacer()
                    }/*.padding(.top, 1)*/
                }
                
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
