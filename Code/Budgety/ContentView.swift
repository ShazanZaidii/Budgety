//
//  ContentView.swift
//  Budgety
//
//  Created by Shazan Zaidi on 22/10/25.
//

import SwiftUI



struct ContentView: View {
    @State var transactions : [Transaction] = [
        Transaction(amount: 9.82, type: .expense, date: Date(), category: "Food")
    ]
    var body: some View {
        VStack {
            List{
            ForEach(transactions){ transaction in
                    Text("\(transaction.amount)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
